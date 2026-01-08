import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:flutter/material.dart';
class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key ,
    this.controller ,
    required this.hintText ,
    required this.labelText});

  final TextEditingController? controller;
  final String hintText;
  final String labelText;


  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  @override
  bool isHidden =true;
  Widget build(BuildContext context) {
    return AppField(
      obsecureText: isHidden,
        hintText: widget.hintText,
        labelText: widget.labelText,
        controller:widget.controller,
      endIcon: InkWell(
        onTap: (){
          setState(() {
            isHidden =!isHidden;
          });
        },
          child: isHidden?Icon(Icons.visibility_off):Icon(Icons.visibility)
      ),

    );
  }
}
