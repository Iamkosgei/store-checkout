import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/styles.dart';
import 'package:store_checkout/data/dummy_data.dart';

class CartProductList extends StatelessWidget {
  const CartProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 16, 16),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                product.image,
                width: 80,
                height: 80,
              ),
              Text(
                product.name,
                style: titleTextStyle,
              ),
              Text(
                '\$ ${product.price}',
                style: titleTextStyle,
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
