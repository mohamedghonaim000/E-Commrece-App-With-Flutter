import 'package:ecommerceproject/Core/Resources/Cash_Helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../../Core/Network/Dio_Helper.dart';
import '../../../Core/Network/End_Points.dart';
import '../../../Models/UserModel.dart';
part 'auth_state.dart';

// username: 'emilys',
// password: 'emilyspass'

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Login funciton
  Future<void> Login() async {
    try {
      if (userNameController.text.isEmpty || passwordController.text.isEmpty) {
        emit(LoginFailure("please put your user name and password"));
        return;
      }
      emit(LoginLoading());
      final Response response = await DioHelper.postRequest(
        endPoint: AppEndPoints.login,
        body: {
          "username": userNameController.text,
          "password": passwordController.text,
        },
      );
      print(response);
      if (response.statusCode == 200 || response.statusCode == 201) {
        UserModel model = UserModel.fromJson(response.data);
        if (model.accessToken != null) {
          await CashHelper.saveToken(model.accessToken!);
        } else {
          emit(LoginFailure("Login failld"));
        }
        emit(LoginSuccess());
      }
    } on DioException catch (e) {
      emit(LoginFailure(e.message ?? ""));
    }
  }

  // Sign up
  // Future<void> SignUp() async {
  //   try {
  //     if (userNameController.text.isEmpty ||
  //         passwordController.text.isEmpty ||
  //         confirmController.text.isEmpty ||
  //         emailController.text.isEmpty) {
  //       emit(SignUpFailure("Please Enter your Field"));
  //       return;
  //     }
  //     if (
  //     passwordController.text !=
  //         confirmController.text ) {
  //       emit(SignUpFailure("The passwords didn`t matches"));
  //       return;
  //     }
  //     emit(SignUpLoading());
  //     final Response response = await DioHelper.postRequest(
  //       endPoint: AppEndPoints.signUp,
  //       body: {
  //         "id": 1,
  //         "username": userNameController.text,
  //         "email": emailController.text,
  //         "password": passwordController.text,
  //       },
  //     );
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       emit(signUpSuccess());
  //     } else {
  //       signUpFailure("Sign Up Failed");
  //     }
  //   } on DioException catch (e) {
  //     emit(LoginFailure(e.message ?? ""));
  //   }
  // }
}
