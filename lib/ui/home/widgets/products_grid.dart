import 'package:flutter/material.dart';
import 'package:store_checkout/data/dummy_data.dart';
import 'package:store_checkout/ui/home/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext ctx, index) {
          final product = products[index];

          return ProductItem(
            product: product,
          );
        });
  }
}
