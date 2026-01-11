import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerceproject/Models/Category_Model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://fakestoreapi.com/",
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  Future<void> getCategories() async {
    try {
      emit(HomeLoading());

      final Response response = await _dio.get("products");

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<CategoryModel> categories =
        (response.data as List).map((e) => CategoryModel.fromJson(e)).toList();

        emit(HomeSuccess(categories));
      } else {
        emit(HomeFailure("Bad Request"));
      }
    } on DioException catch (e) {
      emit(HomeFailure(e.message ?? "Network Error"));
    }
  }
}
