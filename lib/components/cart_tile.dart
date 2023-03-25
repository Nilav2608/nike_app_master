import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartTile extends StatelessWidget {
  Shoe shoe;
  CartTile({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    removeItem() {
      Provider.of<Cart>(context, listen: false).removeFromCart(shoe);

      
    }

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        child: ListTile(
            leading: Image.asset(shoe.imagePath),
            title: Text(
              shoe.name,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              
              "\$${shoe.price}",
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: IconButton(
                onPressed: removeItem, icon: const Icon(Icons.delete))),
      ),
    );
  }
}
