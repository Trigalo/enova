package com.galosoft.dao.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.galosoft.dao.CartDao;
import com.galosoft.model.Cart;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Cart getCartById(int cartId) {
		Session session = sessionFactory.getCurrentSession();
		return (Cart) session.get(Cart.class, cartId);
	}

	@Override
	public void update(Cart cart) {
		int cartId = cart.getCartId();
		
	}
	
	
	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartById(cartId);
		if(cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId+"");
		}
		update(cart);
		return cart;
}

}















