import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Features/Screens/Home/Home.dart';
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
    // const Cart(),
    // const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
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
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}