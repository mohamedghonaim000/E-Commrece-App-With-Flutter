import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:ecommerceproject/Core/Resources/Loading.dart';
import 'package:ecommerceproject/Features/Screens/Home/home_cubit.dart';
import 'package:ecommerceproject/Features/Screens/Product_Details/Product_Details.dart';
import 'package:ecommerceproject/Features/Screens/Products/Products.dart';
import 'package:ecommerceproject/Features/Screens/Products/product_cubit.dart';
import 'package:ecommerceproject/Features/Screens/Search/Search.dart';
import 'package:ecommerceproject/Features/Widgets/Cursol_Slider.dart';
import 'package:ecommerceproject/Features/Widgets/Custom%20_Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductCubit()..getProducts()),
        BlocProvider(create: (context) => HomeCubit()..getCategories()),
      ],

      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // frist row circle avatar
                Row(
                  children: [
                    SizedBox(height: 20),
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
                        Text(
                          "Hello!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "John William",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xffF8F7F7),
                      child: Icon(
                        Icons.notifications,
                        color: AppColor.SecondrayTextColor,
                      ),
                    ),
                  ],
                ),
                // search Field
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Search()));
                  },
                  child: AppField(
                    hintText: "Search here",
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColor.SecondrayTextColor,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CursolSlider(),
                SizedBox(height: 15),
                // Frist List in Home
                Row(
                  children: [
                    Text(
                      "Featured",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Products()),
                        );
                      },
                      child: Text(
                        "Show All",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColor.PrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                BlocBuilder<ProductCubit, ProductState>(
                  builder: (context, state) {
                    if (state is ProductLoading) {
                      return Loading();
                    }
                    if (state is ProductSucsses) {
                      return SizedBox(
                        height: 150,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(right: 20),
                          itemCount: 8,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                    id: state.products[index].id!,
                                  ),
                                ),
                              );
                            },
                            child: CustomCart(
                              title: state.products[index].title,
                              price: state.products[index].price,
                              image: state.products[index].images![0],
                            ),
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 8),
                        ),
                      );
                    } else {
                      ProductFailuer(Msg: "Error");
                      return SizedBox();
                    }
                  },
                ),
                // Second List In Home
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Show All",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColor.PrimaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    if(state is HomeLoading){
                      return Loading();
                    }
                    if(state is HomeSuccess){
                      return SizedBox(
                        height: 150,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(right: 20),
                          itemCount: 8,
                          itemBuilder: (context, index) => CustomCart(
                            image: state.list[index].image,
                            price: state.list[index].price,
                            title: state.list[index].title,
                          ),
                          separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                        ),
                      );
                    }else{
                      HomeFailure("Error");
                      return SizedBox();
                    }

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
