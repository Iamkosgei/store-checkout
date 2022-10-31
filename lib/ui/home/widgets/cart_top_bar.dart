import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/styles.dart';

import '../../../app_configs/colors.dart';

class CartTopBar extends StatelessWidget {
  const CartTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(
            width: 2.0,
            color: Colors.grey.shade100,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(),
          const Text(
            'Cart',
            style: titleTextStyle,
          ),
          Row(
            children: [
              Icon(
                Icons.delete_outline,
                color: primaryColor,
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.more_horiz_rounded,
                color: primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
