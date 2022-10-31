import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/styles.dart';
import 'package:store_checkout/ui/home/widgets/collections_top_bar.dart';
import 'package:store_checkout/ui/home/widgets/products_grid.dart';
import 'package:store_checkout/ui/home/widgets/quick_sale_section.dart';

class CollectionsSection extends StatelessWidget {
  final bool isSmallScreen;
  const CollectionsSection({Key? key, this.isSmallScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CollectionsTopBar(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                QuickSaleSection(
                  isSmallScreen: isSmallScreen,
                ),
                const SizedBox(height: 16),
                const Expanded(
                  child: ProductGrid(),
                ),
                const SizedBox(height: 16),
                Text(
                  'Page 1 of 3',
                  style: titleTextStyle.copyWith(
                    color: Colors.grey.shade300,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
