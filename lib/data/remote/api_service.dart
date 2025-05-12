import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/data/models/product_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService ;

  @GET('/products')

  Future<List<ProductModel>> getProducts();

}