package com.niit.service;

import java.util.List;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;

public interface CartItemService {

	void addCartItem(Product product, Customer id);

	List<CartItem> getAllCartItem();

	void deleteCartItem(int id);

	void removeAllCartItem();

	List<CartItem> getAllCartItemById(Customer id1);

}
