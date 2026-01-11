import 'package:ecommerceproject/Core/Resources/Loading.dart';
import 'package:ecommerceproject/Features/Screens/Product_Details/Product_Details.dart';
import 'package:ecommerceproject/Features/Screens/Products/product_cubit.dart';
import 'package:ecommerceproject/Features/Widgets/Custom%20_Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..getProducts(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Products",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
          centerTitle: true,
        ),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if(state is ProductLoading){
              return Loading();
            }
            if(state is ProductSucsses){
              return Column(
                children: [
                  SizedBox(height: 20,),
                  Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: state.products.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>ProductDetails(id: state.products[index].id!,))
                              );
                            },
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: CustomCart(
                                addIcon: true,
                                image: state.products[index].images![0],
                                price: state.products[index].price,
                                title: state.products[index].title,
                              ),),
                          );
                        }),
                  ),
                ],
              );
            }else{
              return SizedBox();
            }

          },
        ),
      ),
    );
  }
}
