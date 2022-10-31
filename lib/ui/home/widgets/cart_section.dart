import 'package:flutter/material.dart';
import 'package:store_checkout/ui/home/widgets/cart_charge_section.dart';
import 'package:store_checkout/ui/home/widgets/cart_customer_section.dart';
import 'package:store_checkout/ui/home/widgets/cart_product_list.dart';
import 'package:store_checkout/ui/home/widgets/cart_top_bar.dart';

class CartSection extends StatelessWidget {
  const CartSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CartTopBar(),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: const CartProductList(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CartCustomerSection(),
            const SizedBox(
              height: 16,
            ),
            const ChargeSection(),
          ],
        ),
      ),
    );
  }
}
