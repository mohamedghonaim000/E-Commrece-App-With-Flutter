import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Core/Resources/Custom_Button.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cover.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 4),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),

              Positioned(
                top: 50,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 4),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.grey),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("Nike Shoes" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          Row(children: [
                            Icon(Icons.star , color: Color(0xffFFC107),size: 24,),
                            Text("4.5" , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w600)),
                            Text("( 20 Review)" , style: TextStyle(fontSize: 12 , color: AppColor.SecondrayTextColor)),
                          ],)
                        ],
                      ),
                      Spacer(),
                      Text("\$430" , style: TextStyle(color: AppColor.PrimaryColor , fontWeight: FontWeight.w600 , fontSize: 16),)
                    ],
                  ) ,
                  SizedBox(height: 20,),
                  Text("Description" ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                  SizedBox(height: 8,),
                  Text("Culpa aliquam consequuntur veritatis at"
                      " consequuntur praesentium beatae temporibus "
                      "nobis. Velit dolorem facilis neque autem."
                      " Itaque voluptatem expedita qui "
                      "eveniet id veritatis eaque. Blanditiis quia"
                      " placeat nemo. Nobis laudantium nesciunt "
                      "perspiciatis sit eligendi." , style: TextStyle(color: AppColor.SecondrayTextColor ,fontSize: 12 , fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  Text("Size" ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                  SizedBox(height: 12,),
                  // the small squares
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.SecondrayTextColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child:Text("8"),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.SecondrayTextColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child:Text("10"),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.SecondrayTextColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child:Text("38"),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.SecondrayTextColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child:Text("40"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 29,),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: CustomButton(
                              btnText: "Buy Now",
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: 60,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF8F7F7),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_bag_outlined,
                              color: AppColor.SecondrayTextColor,
                              size: 24,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  )




                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}