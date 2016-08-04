package com.beautyhub.service;

import com.beautyhub.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
