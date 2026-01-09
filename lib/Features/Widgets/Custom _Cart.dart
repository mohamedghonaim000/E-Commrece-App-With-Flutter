import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:flutter/material.dart';
class CustomCart extends StatelessWidget {
  const CustomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 126,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xffF8F7F7),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Container(
                height: 99,
                color: const Color(0xffF1F1F1),
                child: Image.asset(
                 "assets/images/Rectangle 4.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite_border,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ),

          const Positioned(
            bottom: 8,
            left: 8,
            child:Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Watch" ,style: TextStyle(fontWeight:FontWeight.w600 , fontSize: 14),),
                  Text(
                    "\$120.00",
                    style: TextStyle(fontWeight: FontWeight.bold , color: AppColor.PrimaryColor),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
