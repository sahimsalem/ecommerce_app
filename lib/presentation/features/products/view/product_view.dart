import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/presentation/features/products/riverpod/product_provider.dart';
import 'package:flutter_ecommerce_app/presentation/features/products/widgets/product_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductView extends ConsumerWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('E-Commerce Products'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: productsAsync.when(
        data: (products) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.75, // Adjust for card height
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                product: product,
                onTap: () {
               
                },
              );
            },
          ),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}