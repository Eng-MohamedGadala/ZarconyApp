import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zarcony_app/pages/cart/views/cart_view.dart';
import 'package:zarcony_app/pages/home/views/home_view.dart';

import 'components/custom_cart_shape.dart';

final counterProvider = StateProvider((ref) => 0);
void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  int _selectedIndex = 2;
  List pages = [HomeView(), HomeView(), CartView(), HomeView(), HomeView()];

  @override
  Widget build(BuildContext context) {
    changePageIndex(int page) {
      context.read(counterProvider).state = page;
    }

    return MaterialApp(
      checkerboardOffscreenLayers: false,
      home: Scaffold(
        body: Consumer(builder: (context, watch, _) {
          final count = watch(counterProvider).state;
          return pages[count];
        }),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.store),
              label: "Grocery",
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.notifications_outlined),
              label: "News",
            ),
            new BottomNavigationBarItem(
              icon: Container(),
              label: "",
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite_outline),
              label: "Favorites",
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance_wallet_outlined),
              label: "Card",
            )
          ],
          onTap: changePageIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xff797979),
          fixedColor: Color.fromARGB(255, 219, 61, 0),
          backgroundColor: const Color(0xffe2e2e2),
          currentIndex: _selectedIndex,
          showUnselectedLabels: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 219, 61, 0),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Text(
                    '\$44',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 219, 61, 0),
                      borderRadius: BorderRadius.circular(100)),
                  child: CustomPaint(
                    size: Size(42, 42),
                    painter: CartCustomPainter(),
                  ),
                )
              ],
            ),
            onPressed: () {
              print('Cart view ');
              context.read(counterProvider).state = 2;
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => CartView()));
            }),
      ),
    );
  }
}
