import 'package:ecommerceproject/Core/Resources/Cash_Helper.dart';
import 'package:ecommerceproject/Features/Screens/Sign%20In/SignIn.dart';
import 'package:ecommerceproject/Features/Widgets/Account_Item.dart';
import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32,),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 45,
            ),
            Text("Mohamed Mokhtar" , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.w600),),
            SizedBox(height: 42,),
            AccountItem(content: "Profile", endIcon: Icons.person),
            SizedBox(height: 16,),
            AccountItem(content: "Setting", endIcon: Icons.settings),
            SizedBox(height: 16,),
            AccountItem(content: "Contact", endIcon: Icons.mail),
            SizedBox(height: 16,),
            AccountItem(content: "Share App", endIcon: Icons.share),
            SizedBox(height: 16,),
            AccountItem(content: "Help", endIcon: Icons.help),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: GestureDetector(
                onTap: (){
                  CashHelper.deleteToken().then(
                        (_) => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Signin()),
                    ),
                  );
                },
                  child: Text("Sign Out" , style: TextStyle(color: Color(0xffF55F1F ),fontSize: 16 , fontWeight: FontWeight.w600),)),
            )
          ],
        ),
      ),
    );
  }
}
