import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            if (counter > 1) {
              setState(() {
                counter--;
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: AppColor.SecondrayTextColor, width: 1),
            ),
            child: Icon(Icons.remove, size: 14, color: AppColor.SecondrayTextColor),
          ),
        ),

        const SizedBox(width: 10),

        Text(
          "$counter",
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        const SizedBox(width: 10),

        GestureDetector(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: AppColor.SecondrayTextColor, width: 1),
            ),
            child: Icon(Icons.add, size: 14, color: AppColor.SecondrayTextColor),
          ),
        ),
      ],
    );
  }
}