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
		return entityManager.createQuery("select c from Cart c where c.userId = :userId order by id desc")
			.setParameter("userId", userId)
			.getResultList();
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
