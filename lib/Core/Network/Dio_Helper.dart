import 'package:dio/dio.dart';
import 'package:ecommerceproject/Core/Network/End_Points.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper{

  static Dio?dio;

  static initDio(){
    dio??=Dio(
        BaseOptions(
          receiveDataWhenStatusError: true,
          baseUrl: AppEndPoints.baseUrl,
        )
    );

    dio!.interceptors.add(PrettyDioLogger());
  }

  static Future<Response> getRequest({required String endPoint}) async{
    try{
      Response response = await dio!.get(endPoint);
      return response;
    }catch(e){
      rethrow;
    }
  }


  static Future<Response> postRequest({required String endPoint , required Map<String , dynamic> body}) async{
    try{
      Response response = await dio!.post(endPoint , data: body);
      return response;
    }catch(e){
      rethrow;
    }
  }
}