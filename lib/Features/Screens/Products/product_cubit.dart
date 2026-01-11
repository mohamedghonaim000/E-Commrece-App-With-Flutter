import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerceproject/Core/Network/Dio_Helper.dart';
import 'package:ecommerceproject/Core/Network/End_Points.dart';
import 'package:ecommerceproject/Models/ProductModel.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  Future getProducts ()async{
    try{
      emit(ProductLoading());
      final response = await DioHelper.getRequest(
          endPoint: AppEndPoints.products
      );
      print(response);
      if (response.statusCode == 200 || response.statusCode == 201){
        List<ProductModel> productModels = (response.data['products'] as List)
            .map((json) => ProductModel.fromJson(json))
            .toList();

        emit(ProductSucsses(products: productModels));
      }else{
        emit(ProductFailuer(Msg: "Bad Request"));
      }
    }on DioException catch (e) {
      emit(ProductFailuer(Msg: e.message??""));
    }
  }
}
