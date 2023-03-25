import 'package:flutter/material.dart';
import 'package:nike_app/components/show_tile.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {


  
  addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);
    const snackBar = SnackBar(
        content: Text(
      "One Item is added to cart",
      style: TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.white,
    behavior: SnackBarBehavior.floating,
    duration: Duration(milliseconds: 2000),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.search_rounded)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "Everyone flies.. some flies longer than others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Hot picks 🔥",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "See more",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value.shoeShop.length,
            itemBuilder: (context, index) {
              Shoe shoe = value.getShoeList()[index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
          )),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
