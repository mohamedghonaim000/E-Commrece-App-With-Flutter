import 'package:ecommerceproject/Features/Widgets/Custom%20_Cart.dart';
import 'package:flutter/material.dart';
class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products" ,style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),),
        centerTitle: true,
      ),
      body: Column(
          children: [
            SizedBox(height: 20,),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing:1,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Align(
                          alignment: Alignment.topCenter,
                          child: CustomCart(
                            addIcon: true,
                          ),);
                    }),
              ),
          ],
        ),
    );
  }
}
