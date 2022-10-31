import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/colors.dart';
import 'package:store_checkout/app_configs/styles.dart';

class CartCustomerSection extends StatelessWidget {
  const CartCustomerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Customer', style: titleTextStyle),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Kate Bell',
                  style: titleTextStyle.copyWith(
                    color: primaryColor,
                  )),
              Text(
                'kate.bell@googleemail.com',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
