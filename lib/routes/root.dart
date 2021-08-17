import 'package:flutter/material.dart';

import 'package:zarcony_app/components/custom_cart_shape.dart';
import 'package:zarcony_app/pages/cart/views/cart_view.dart';
import 'package:zarcony_app/pages/home/views/home_view.dart';


class Root extends StatefulWidget {
  Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 2;
  List pages = [HomeView(), HomeView(), CartView(), HomeView(), HomeView()];
  void navigationTapped(int page) {
    if (page == _selectedIndex) {
      return;
    } else {
      print(page);
      setState(() {
        _selectedIndex = page;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: pages[_selectedIndex].rxrresz,
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
        onTap: navigationTapped,
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
            // navigationTapped(2);
            
          }),
    );
  }
}
