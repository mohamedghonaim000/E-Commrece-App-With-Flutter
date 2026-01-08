import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:flutter/material.dart';
class AppCard extends StatelessWidget {
  const AppCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 135,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        color: AppColor.PrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 5),
        child: Row(
          children: [
              // left side
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Get Winter Discount" ,style: TextStyle(color: Colors.white , fontSize: 14 , fontWeight: FontWeight.w600),),
                Text("20% Off" ,style: TextStyle(color: Colors.white , fontSize: 14 , fontWeight: FontWeight.w600),),
                Text("For Childern" ,style: TextStyle(color: Colors.white , fontSize: 14 , fontWeight: FontWeight.w600),),

              ],
            ),
            // right side
            Spacer(),
            Image.asset("assets/images/image 1.png")
          ],
        ),
      ),

    );
  }
}
