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
	
}
