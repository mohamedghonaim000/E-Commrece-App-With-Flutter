import 'package:ecommerceproject/Features/Screens/Home/Home.dart';
import 'package:ecommerceproject/Features/Screens/Sign%20In/SignIn.dart';
import 'package:ecommerceproject/Features/Screens/Sign%20Up/SignUp.dart';
import 'package:ecommerceproject/Features/Widgets/Custom%20_Cart.dart';
import 'package:flutter/material.dart';

import 'Features/Screens/Bottom_Nav_Bar/Home_Nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNav(),
    );
  }
}

