package com.galosoft.service;

import com.galosoft.model.Cart;

public interface CartService {
	
	Cart getCartById(int cartId);
	void update(Cart cart);

}
