import 'package:ecommerceproject/Core/Resources/App_Card.dart';
import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:ecommerceproject/Core/Resources/Custom_Button.dart';
import 'package:ecommerceproject/Features/Widgets/Custom_Password_Field.dart';
import 'package:flutter/material.dart';
class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 56,),
            AppCard(),
            SizedBox(height: 62,),
            AppField(hintText: "User Name", labelText: "Enter Your Name"),
            SizedBox(height: 25,),
            CustomPasswordField(hintText: "Password", labelText: "Password"),
            SizedBox(height: 3,),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: null,
                ),
                Text("Remember me"),
                Spacer(),
                Text("Forgot Your Password?")
              ],
            ),
            SizedBox(height: 22,),
            CustomButton(btnText: "Login", onPressed: (){}),
            SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don`t Have Account?" ,textAlign: TextAlign.center, style: TextStyle(color: AppColor.SecondrayTextColor ,fontSize: 12),),
                Text("Sign Up" , textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 12),)
              ],
            )


          ],
        ),
      ),
    );
  }
}
