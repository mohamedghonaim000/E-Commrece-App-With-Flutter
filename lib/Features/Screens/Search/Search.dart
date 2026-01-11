import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:ecommerceproject/Core/Resources/Loading.dart';
import 'package:ecommerceproject/Core/Resources/Snack_Bar.dart';
import 'package:ecommerceproject/Features/Screens/Product_Details/Product_Details.dart';
import 'package:ecommerceproject/Features/Screens/Search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Widgets/Custom _Cart.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    AppField(
                      hintText: "Search here",
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColor.SecondrayTextColor,
                      ),
                      endIcon: Icon(
                        Icons.cancel,
                        color: AppColor.SecondrayTextColor,
                      ),
                      onSubmitted: (value) {
                        context.read<SearchCubit>().getSearchResults(value);
                      },
                    ),
                    BlocBuilder<SearchCubit, SearchState>(
                      builder: (context, state) {
                        if (state is SearchLoading) {
                          return Loading();
                        }

                        if (state is SearchSuccess) {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.7,
                            ),
                            itemCount: state.list.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetails(
                                        id: state.list[index].id!,
                                      ),
                                    ),
                                  );
                                },
                                child: CustomCart(
                                  addIcon: true,
                                  image: state.list[index].images![0],
                                  price: state.list[index].price,
                                  title: state.list[index].title,
                                ),
                              );
                            },
                          );
                        }

                        if (state is SearchFailure) {
                          showSnakeBar(
                            msg: state.errMsg,
                            type: AnimatedSnackBarType.error,
                            context: context,
                          );
                        }

                        return const SizedBox();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
