import 'package:flutter_ecommerce_app/data/models/product_model.dart';
import 'package:flutter_ecommerce_app/data/remote/api_service.dart';
import 'package:flutter_ecommerce_app/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ApiService apiService;

  ProductRepositoryImpl(this.apiService);

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      return await apiService.getProducts();
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}