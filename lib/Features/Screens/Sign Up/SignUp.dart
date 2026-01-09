import 'package:ecommerceproject/Core/Resources/App_Card.dart';
import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:ecommerceproject/Core/Resources/Custom_Button.dart';
import 'package:ecommerceproject/Features/Widgets/Custom_Password_Field.dart';
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 56,),
              AppCard(),
              SizedBox(height: 62,),
              AppField(hintText: "user@gmail.com", labelText: "Email"),
              SizedBox(height: 25,),
              CustomPasswordField(hintText: "Password", labelText: "Password"),
              SizedBox(height: 3,),
              CustomPasswordField(hintText: "Password", labelText: "Confirm Password "),
              SizedBox(height: 3,),
              SizedBox(height: 50,),
              CustomButton(btnText: "Sign Up", onPressed: (){}),
              SizedBox(height: 99,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have Account?" ,textAlign: TextAlign.center, style: TextStyle(color: AppColor.SecondrayTextColor ,fontSize: 12),),
                  Text("Sign In" , textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 12),)
                ],
              )
      
      
            ],
          ),
        ),
      ),
    );
  }
}
