import 'package:flutter/material.dart';
import 'package:nike_app/components/bottom_nav.dart';
import 'package:nike_app/pages/cart_page.dart';
import 'package:nike_app/pages/shop_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void navigationBar(index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: MyBottomNavBar(
          tabChange: (index) => navigationBar(index),
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          )),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Logo
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "assets/logo.png",
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.info_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedindex],
    );
  }
}
