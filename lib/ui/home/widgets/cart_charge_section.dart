import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/colors.dart';
import 'package:store_checkout/app_configs/styles.dart';

class ChargeSection extends StatelessWidget {
  const ChargeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Add discount',
                  style: titleTextStyle.copyWith(
                    color: primaryColor,
                  )),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: primaryColor,
                    width: 1.0,
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text('+'),
                  ),
                ),
              )
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Sub total',
                style: titleTextStyle,
              ),
              Text(
                '\$ 345.00',
                style: titleTextStyle,
              ),
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 8,
          ),
          Opacity(
            opacity: .5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add shipping',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: primaryColor,
                      width: 1.0,
                    ),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text('+'),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              color: primaryColor,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Text('5',
                          style: titleTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'Charge \$389.85',
                        textAlign: TextAlign.center,
                        style: titleTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
