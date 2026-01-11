import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:ecommerceproject/Core/Resources/App_Card.dart';
import 'package:ecommerceproject/Core/Resources/App_Color.dart';
import 'package:ecommerceproject/Core/Resources/App_Field.dart';
import 'package:ecommerceproject/Core/Resources/Custom_Button.dart';
import 'package:ecommerceproject/Core/Resources/Loading.dart';
import 'package:ecommerceproject/Features/Screens/Bottom_Nav_Bar/Home_Nav.dart';
import 'package:ecommerceproject/Features/Screens/Home/Home.dart';
import 'package:ecommerceproject/Features/Screens/Sign%20In/auth_cubit.dart';
import 'package:ecommerceproject/Features/Widgets/Custom_Password_Field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Core/Resources/Snack_Bar.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: Scaffold(
        body: BlocConsumer<AuthCubit, AuthState>(

          listener: (context, state) {

            if(state is LoginFailure){
              showSnakeBar(
                  msg: "log in Faild",
                  type: AnimatedSnackBarType.error,
                  context: context
              );
            }

            if(state is LoginSuccess){
              showSnakeBar(
                msg: "log in succses",
                type: AnimatedSnackBarType.success,
                context: context,
              );

              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=>Home())
              );
            }
          },

          builder: (context, state) {
            final cubit = context.read<AuthCubit>();

            if (state is LoginLoading) {
              return Loading();
            }

            return SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Column(
                  children: [

                    const SizedBox(height: 56),
                    const AppCard(),
                    const SizedBox(height: 62),

                    AppField(
                      controller: cubit.userNameController,
                      hintText: "User Name",
                      labelText: "Enter Your Name",
                    ),

                    const SizedBox(height: 25),

                    CustomPasswordField(
                      controller: cubit.passwordController,
                      hintText: "Password",
                      labelText: "Password",
                    ),

                    const SizedBox(height: 3),

                    Row(
                      children: const [
                        Checkbox(value: false, onChanged: null),
                        Text("Remember me"),
                        Spacer(),
                        Text("Forgot Your Password?"),
                      ],
                    ),

                    const SizedBox(height: 22),

                    CustomButton(
                      btnText: "Login",
                      onPressed: () => cubit.Login(),
                    ),

                    const SizedBox(height: 13),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Don`t Have Account?",
                          style: TextStyle(
                            color: AppColor.SecondrayTextColor,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

