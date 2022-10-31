import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/colors.dart';
import 'package:store_checkout/data/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Image.network(
                      product.image,
                    ),
                  ),
                  if (product.hasMore)
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: moreIconColor,
                              width: 2.0,
                            ),
                          ),
                          child: Icon(
                            Icons.more_horiz_rounded,
                            color: moreIconColor,
                            size: 16,
                          ),
                        ))
                ],
              ),
            ),
            Text(product.name),
            const SizedBox(
              height: 4,
            ),
            const Text(
              '36 in stock',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
}
