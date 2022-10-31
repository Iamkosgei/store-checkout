import 'package:flutter/material.dart';
import 'package:store_checkout/app_configs/colors.dart';
import 'package:store_checkout/ui/home/checkout_page.dart';
import 'package:store_checkout/ui/home/orders_page.dart';
import 'package:store_checkout/ui/home/store_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: const [
            CheckoutPage(),
            OrdersPage(),
            StorePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Checkout',
                    style: TextStyle(
                      color: selectedIndex == 0 ? primaryColor : Colors.black,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.move_to_inbox_outlined,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Orders',
                    style: TextStyle(
                      color: selectedIndex == 1 ? primaryColor : Colors.black,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.store_outlined,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Store',
                    style: TextStyle(
                      color: selectedIndex == 2 ? primaryColor : Colors.black,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
          ]),
    );
  }
}
