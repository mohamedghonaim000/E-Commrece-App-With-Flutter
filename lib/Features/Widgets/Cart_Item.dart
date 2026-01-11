import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Features/Widgets/Counter.dart';
import 'package:flutter/material.dart';

class Cartitem extends StatelessWidget {
  const Cartitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/Rectangle 4.png",
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "T-shirt",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          "Size L",
                          style: TextStyle(color: AppColor.SecondrayTextColor, fontSize: 13),
                        ),
                      ],
                    ),
                    const Icon(Icons.delete_outline, color: Colors.red, size: 22),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "\$ 1,990",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Counter(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
