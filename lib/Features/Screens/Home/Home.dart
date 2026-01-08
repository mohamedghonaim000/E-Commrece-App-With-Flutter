import 'package:ecommerceproject/Core/Resources/App_Card.dart';
import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:ecommerceproject/Core/Resources/Custom_Button.dart';
import 'package:ecommerceproject/Features/Widgets/Custom_Password_Field.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 500,),
          CustomButton()
        ],
      ),
    );
  }
}
