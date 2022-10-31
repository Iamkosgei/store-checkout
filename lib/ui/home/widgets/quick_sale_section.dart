import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/colors.dart';
import 'package:store_checkout/app_configs/styles.dart';
import 'package:store_checkout/ui/home/widgets/cart_section.dart';

class QuickSaleSection extends StatelessWidget {
  final bool isSmallScreen;
  const QuickSaleSection({Key? key, required this.isSmallScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isSmallScreen
          ? () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartSection()));
            }
          : null,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Text('Quick sale',
              style: titleTextStyle.copyWith(
                color: primaryColor,
              )),
        ),
      ),
    );
  }
}
