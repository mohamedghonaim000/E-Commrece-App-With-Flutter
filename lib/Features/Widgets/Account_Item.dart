import 'package:flutter/material.dart';
class AccountItem extends StatelessWidget {
  const AccountItem({super.key  , required this.content , required this.endIcon});
final String content;
final IconData endIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xffF8F7F7),
        borderRadius: BorderRadius.circular(10)
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(endIcon , size: 24,color: Color(0xff000000),) ,
            SizedBox(width: 12,),
            Text(content, style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600),),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined ,size: 24,color: Color(0xff000000))
          ],
        ),
      ),
    );
  }
}
