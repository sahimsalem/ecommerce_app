import 'package:dio/dio.dart';

class DioClient {
  static Dio get instance {
    final dio = Dio();
    dio.options
      ..baseUrl = 'https://fakestoreapi.com/'
      ..connectTimeout = Duration(seconds: 5)
      ..receiveTimeout = Duration(seconds: 3);

    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}