import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:flutter/material.dart';

class AppField extends StatelessWidget {
  const AppField({
    super.key,
    this.obsecureText = false,
    this.endIcon,
    required this.hintText,
    this.controller,
    required this.labelText,
  });
  final bool obsecureText;
  final Widget? endIcon;
  final String hintText;
  final TextEditingController? controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: AppColor.TextColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          obscureText: obsecureText,
          decoration: InputDecoration(
            suffixIcon: endIcon,
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(color: AppColor.SecondrayTextColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColor.SecondrayTextColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColor.PrimaryColor,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
