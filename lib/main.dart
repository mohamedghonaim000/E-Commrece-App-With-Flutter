import 'package:ecommerceproject/Features/Screens/Account/Account.dart';
import 'package:ecommerceproject/Features/Screens/Splash/Splash.dart';
import 'package:flutter/material.dart';
import 'Core/Network/Dio_Helper.dart';

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
      home: Splash(),
    );
  }
}

