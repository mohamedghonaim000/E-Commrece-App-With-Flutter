import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerceproject/Core/Network/Dio_Helper.dart';
import 'package:ecommerceproject/Core/Network/End_Points.dart';
import 'package:ecommerceproject/Models/ProductModel.dart';
import 'package:meta/meta.dart';

part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit() : super(ProductDetailInitial());
  Future getProductDetail(int id) async{
    try{
      emit(ProductLoading());
      final response = await DioHelper.getRequest(
          endPoint:AppEndPoints.productDetail+id.toString()
      );
      print(response);
      if(response.statusCode==200 || response.statusCode==201){
        ProductModel productModel = ProductModel.fromJson(response.data);
        emit(ProductSucsses(product: productModel));
      }else{
        emit(ProductFailuer(Msg: "Error"));
      }
    }on DioException catch(e){
      emit(ProductFailuer(Msg:e.message??"" ));
    }
  }
}
