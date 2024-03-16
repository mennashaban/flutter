import 'package:dio/dio.dart';

class DioHelper{
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ),
  );

  // static init(){
  //   dio = Dio(
  //     BaseOptions(
  //       baseUrl: 'https://newsapi.org/',
  //       receiveDataWhenStatusError: true,
  //     ),
  //   );
  // }

  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> query})async
  {
    //url = path (method)
      return await dio.get(
        url,
        queryParameters: query,);

  }
}