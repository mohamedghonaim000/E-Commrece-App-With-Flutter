import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({super.key, this.addIcon = false ,  this.image ,  this.price , this.title});

  final bool addIcon;
  final String? image;
  final String? title;
  final double? price;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 126,
      height: 150,
      decoration: BoxDecoration(
        color: const Color(0xffF8F7F7),
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
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Container(
                height: 95,
                color: const Color(0xffF1F1F1),
                child: Image.network(
                  image??"assets/images/Rectangle 4.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.grey.shade400,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title??"Watch",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "${price?.toStringAsFixed(2) ?? "120.00"} \$",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: AppColor.PrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                if (addIcon)
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: AppColor.PrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}