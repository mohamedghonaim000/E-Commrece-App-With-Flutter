import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerceproject/Core/Network/Dio_Helper.dart';
import 'package:ecommerceproject/Core/Network/End_Points.dart';
import 'package:ecommerceproject/Models/ProductModel.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  Future getSearchResults ( String query) async{
    try{
      final response = await DioHelper.getRequest(
          endPoint: AppEndPoints.search+query.toString()
      );
      print(response);
      if (response.statusCode == 200 || response.statusCode == 201){
        List<ProductModel> productModels = (response.data['products'] as List)
            .map((json) => ProductModel.fromJson(json))
            .toList();

        emit(SearchSuccess( productModels));
      }else{
        emit(SearchFailure( "Bad Request"));
      }
    }on DioException catch (e) {
      emit(SearchFailure( e.message??" exiption"));
    }
  }
}
