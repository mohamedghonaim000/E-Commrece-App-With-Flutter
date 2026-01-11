import 'package:ecommerceproject/Core/Resources/Cash_Helper.dart';
import 'package:ecommerceproject/Features/Screens/Bottom_Nav_Bar/Home_Nav.dart';
import 'package:ecommerceproject/Features/Screens/Sign%20In/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      CashHelper.getToken().then((value){
        if(mounted){
          if(value.isEmpty){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=>Signin())
            );
          }else{
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=>HomeNav())
            );
          }
        }
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset("assets/json/shoppincart.json"),
      ),
    );
  }
}
