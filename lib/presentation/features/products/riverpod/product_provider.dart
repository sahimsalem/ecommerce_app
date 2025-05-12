import 'package:flutter_ecommerce_app/core/network/dio_client.dart';
import 'package:flutter_ecommerce_app/data/remote/api_service.dart';
import 'package:flutter_ecommerce_app/data/repositories/product_repository_impl.dart';
import 'package:flutter_ecommerce_app/domain/use_cases/get_products.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ecommerce_app/data/models/product_model.dart';


final dioProvider = Provider((ref) => DioClient.instance);

final apiServiceProvider = Provider((ref) => ApiService(ref.watch(dioProvider)));

final productRepositoryProvider = Provider(
  (ref) => ProductRepositoryImpl(ref.watch(apiServiceProvider)),
);


final getProductsUseCaseProvider = Provider(
  (ref) => GetProducts(ref.watch(productRepositoryProvider)),
);


final productsProvider = FutureProvider<List<ProductModel>>((ref) async {
  final getProducts = ref.watch(getProductsUseCaseProvider);
  return await getProducts();
});