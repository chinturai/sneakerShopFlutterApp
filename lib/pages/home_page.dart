import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom_nav_bar.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // will change the selected index (curr tab)
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  List<Widget> _pages = [
    // shopping page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.black),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            // logo
            DrawerHeader(
              child: Image.asset('lib/images/logo.png', color: Colors.white),
            ),

            // page links

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text("Home", style: TextStyle(color: Colors.white)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: Text("About", style: TextStyle(color: Colors.white)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text("Log Out", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
