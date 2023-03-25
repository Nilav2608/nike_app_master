import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const Center(
            child: Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: ListView.builder(
            itemCount: value.userCart.length,
            itemBuilder: (context, index) {
              Shoe shoe = value.getUserCart()[index];
              return CartTile(
                shoe: shoe,
              );
            },
          ))
        ],
      ),
    );
  }
}
