import 'package:ecommerceproject/Features/Screens/Products/Products.dart';
import 'package:ecommerceproject/Features/Screens/Sign%20In/SignIn.dart';
import 'package:flutter/material.dart';
import 'Core/Network/Dio_Helper.dart';
import 'Features/Screens/Bottom_Nav_Bar/Home_Nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Products(),
    );
  }
}

