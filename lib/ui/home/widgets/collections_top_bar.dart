import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/colors.dart';
import 'package:store_checkout/app_configs/styles.dart';

class CollectionsTopBar extends StatelessWidget {
  const CollectionsTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            children: [
              const Text(
                'All Collections',
                style: titleTextStyle,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: primaryColor,
              ),
            ],
          ),
          Icon(
            Icons.search,
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
