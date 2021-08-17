import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zarcony_app/components/custom_app_bar.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: const Color(0xf8424242),
                    letterSpacing: 0.44099999427795405,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 70,
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, random.nextInt(255),
                                  random.nextInt(156), random.nextInt(194)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Turkish Steak',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: const Color(0xff2b3d54),
                                    letterSpacing: 0.3527999954223633,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  '173 Grams',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 9,
                                    color: const Color(0xff8d97a4),
                                    letterSpacing: 0.26459999656677247,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  '\$ 25',
                                  style: TextStyle(
                                    fontFamily: 'Circular Std',
                                    fontSize: 18,
                                    color: const Color(0xffb13e55),
                                    letterSpacing: 0.5291999931335449,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 176, 234, 253),
                            ),
                            child: IconButton(
                              color: Color.fromARGB(255, 176, 234, 253),
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: Color.fromARGB(255, 72, 182, 218),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 19,
                                color: const Color(0xf8424242),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 176, 234, 253),
                            ),
                            child: IconButton(
                              color: Color.fromARGB(255, 176, 234, 253),
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 72, 182, 218),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
