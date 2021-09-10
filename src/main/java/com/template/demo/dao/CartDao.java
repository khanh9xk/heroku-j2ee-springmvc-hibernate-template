package com.template.demo.dao;

import com.template.demo.model.Cart;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.*;

@Repository
public class CartDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public Cart find(Integer id) {
		return entityManager.find(Cart.class, id);
	}
	@Transactional
	public void delete(Integer id) {
		Cart cart = entityManager.find(Cart.class, id);
		entityManager.remove(cart);
	}
	
	@SuppressWarnings("unchecked")
	public List<Cart> getList() {
		return entityManager.createQuery("select c from Cart c").getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Cart> getListByUserId(Integer userId) {
		List<Cart> cartList = entityManager.createQuery("select c from Cart c where c.userId = :userId order by id desc")
			.setParameter("userId", userId)
			.getResultList();
		
		for (Cart cart : cartList){
			ProductType productType = entityManager.find(ProductType.class, cart.getProductTypeId());
			
			cart.setPrice(productType.getPrice());
			cart.setType(productType.getProductTypeName());
			cart.setStock(productType.getStock());
			
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productTypeId = :productTypeId")
				.setParameter("productTypeId", cart.getProductTypeId())
				.getResultList();
								      
			if(imageList.size() > 0){
				cart.setImage(imageList.get(0).getLink());
			}
			
			Product p = entityManager.find(Product.class, productType.getProductId());
			
			cart.setProductName(p.getName());
			if(null != p.getBrandId()){
				Brand brand = entityManager.find(Brand.class, p.getBrandId());
				cart.setBrand(brand.getName());
			}
			if(null != p.getCategoryId()){
				Category category = entityManager.find(Category.class, p.getCategoryId());
				cart.setCategory(category.getName());
			}
		}
		
		return cartList;
	}
	
	@Transactional
	public Cart save(Cart cart) {
		if (cart.getId() == null) {
			cart.setCreatedDate(new Date());
			entityManager.persist(cart);
			return cart;
		} else {
			cart.setLastModifiedDate(new Date());
			return entityManager.merge(cart);
		}		
	}
	
	@Transactional
	public void save(List<Cart> cartList, Integer userId) {
		
		List<Integer> proTypeTraceList = new ArrayList();
		for (Cart cartNew : cartList){
			if(proTypeTraceList.contains(cartNew.getProductTypeId())){
				throw new RuntimeException("[SAVE CART] Có lỗi sảy ra");
			}
			proTypeTraceList.add(cartNew.getProductTypeId());
		}
		
		
		List<Cart> cartAdd = new ArrayList();
		cartAdd.addAll(cartList);
		List<Cart> cartUpdate = new ArrayList();
		
		List<Cart> cartOldList = getListByUserId(userId);
		
		if(!cartOldList.isEmpty()){
			for (Cart cartOld : cartOldList){
				for (Cart cartNew : cartList){
					if(cartOld.getProductTypeId() == cartNew.getProductTypeId()){
						cartOld.setQuantity(cartNew.getQuantity() + cartOld.getQuantity());
						cartUpdate.add(cartOld);
						cartAdd.remove(cartNew);
					}
				}
			}
		}
		cartAdd.addAll(cartUpdate);
		for (Cart cart : cartAdd){
			save(cart);
		}
	}	
	
}
