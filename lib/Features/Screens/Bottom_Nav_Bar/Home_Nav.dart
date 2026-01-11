import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Features/Screens/Account/Account.dart';
import 'package:ecommerceproject/Features/Screens/Cart/Cart.dart';
import 'package:ecommerceproject/Features/Screens/Home/Home.dart';
import 'package:ecommerceproject/Features/Screens/Products/Products.dart';
import 'package:ecommerceproject/Features/Screens/Search/Search.dart';
import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Home(),
    const Cart(),
    const Search(),
    const Products(),
    const Account(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(

          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          backgroundColor: const Color(0xFFF8F7F7),
          selectedItemColor: AppColor.PrimaryColor,
          unselectedItemColor: Color(0xff9E9E9E),

          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}