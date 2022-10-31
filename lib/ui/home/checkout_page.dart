import 'package:flutter/material.dart';
import 'package:store_checkout/ui/home/widgets/cart_section.dart';
import 'package:store_checkout/ui/home/widgets/collections_section.dart';
import 'package:store_checkout/utils/screen_size.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return LayoutBuilder(builder: (context, constraints) {
        bool isTablet = TabletDetector.isTablet(MediaQuery.of(context));

        bool isSmallSize = constraints.maxWidth <
            (orientation == Orientation.portrait ? 600 : 800);

        if (!isTablet) {
          return const CollectionsSection(
            isSmallScreen: true,
          );
        }
        return Row(
          children: const [
            Expanded(
              flex: 3,
              child: CollectionsSection(),
            ),
            Expanded(
              flex: 2,
              child: CartSection(),
            ),
          ],
        );
      });
    });
  }
}
