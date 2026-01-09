import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:ecommerceproject/Features/Widgets/Cursol_Slider.dart';
import 'package:ecommerceproject/Features/Widgets/Custom%20_Cart.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // frist row circle avatar
                Row(
                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      child: Image.asset("assets/images/Ellipse 1.png"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello!" ,style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w300)),
                        Text("John William" ,style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xffF8F7F7),
                      child: Icon(Icons.notifications , color: AppColor.SecondrayTextColor,),
                    )
                  ],
                ),
                // search Field
                SizedBox(height:5,),
                AppField(hintText: "Search here", prefixIcon: Icon(Icons.search , color: AppColor.SecondrayTextColor,),),
                SizedBox(height: 20,),
                CursolSlider(),
                SizedBox(height: 15,),
                // Frist List in Home
                Row(
                  children: [
                    Text("Featured" , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),),
                    Spacer(),
                    Text("Show All" , style: TextStyle(fontWeight: FontWeight.w400 ,fontSize: 12 ,color: AppColor.PrimaryColor),)
                  ],
                ),
                SizedBox(height: 12,),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal ,
                    padding: EdgeInsets.only(right: 20),
                    itemCount: 8,
                      itemBuilder: (context , reason)=>CustomCart(),
                    separatorBuilder: (context , index)=>const SizedBox(width: 8,),
                  ),
                ),
                // Second List In Home
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text("Featured" , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),),
                    Spacer(),
                    Text("Show All" , style: TextStyle(fontWeight: FontWeight.w400 ,fontSize: 12 ,color: AppColor.PrimaryColor),)
                  ],
                ),
                SizedBox(height: 12,),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal ,
                    padding: EdgeInsets.only(right: 20),
                    itemCount: 8,
                    itemBuilder: (context , reason)=>CustomCart(),
                    separatorBuilder: (context , index)=>const SizedBox(width: 8,),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
