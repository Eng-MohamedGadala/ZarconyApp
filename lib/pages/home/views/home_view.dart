import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zarcony_app/components/custom_app_bar.dart';


class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    
    Random random = new Random();
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          ///custom appbar
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// search bar
              Container(
                child: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 247, 249),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 112, 112, 112),
                            offset: Offset.zero,
                            blurRadius: 0.3,
                            spreadRadius: 0.3)
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: " Search in thousands of products...",
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          color: Color.fromRGBO(93, 25, 72, 1),
                          onPressed: () {},
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                ),
              ),

              ///Addresses row
              Container(
                height: 75,
                child: ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 112, 112, 112),
                                offset: Offset.zero,
                                blurRadius: 0.3,
                                spreadRadius: 0.3)
                          ],
                        ),
                        height: 70,
                        width: 190,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 227, 221, 214),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Home Address',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: const Color(0xff474749),
                                      letterSpacing: 0.323399995803833,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Mustafa St. No:2',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 9,
                                      color: const Color(0xff474749),
                                      letterSpacing: 0.26459999656677247,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Street x12',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 9,
                                      color: const Color(0xff474749),
                                      letterSpacing: 0.26459999656677247,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),

              ///Title or explore Category
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore by Category',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff474749),
                        letterSpacing: 0.323399995803833,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'See All (36)',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        color: const Color(0xff929294),
                        letterSpacing: 0.26459999656677247,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),

              ///Explore by category
              Container(
                height: 110,
                child: ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(255, random.nextInt(255),
                                    random.nextInt(156), random.nextInt(194)),
                              ),
                              height: 70,
                              width: 70,
                            ),
                            Text(
                              'Steak',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                color: const Color(0xff474749),
                                letterSpacing: 0.2939999961853027,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      );
                    }),
              ),

              ///Title of deals of the day
              Container(
                margin: EdgeInsets.all(5),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Deals of the day',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: const Color(0xff474749),
                    letterSpacing: 0.323399995803833,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              ///Deals of the day
              Container(
                height: 110,
                child: ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(
                                            255,
                                            random.nextInt(255),
                                            random.nextInt(156),
                                            random.nextInt(194)),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Positioned(
                                    top: -5,
                                    left: -5,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        color: Colors.red,
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Summer Sun Ice Cream Pack',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: const Color(0xff474749),
                                      letterSpacing: 0.2939999961853027,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Pieces 5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      color: const Color(0xff474749),
                                      letterSpacing: 0.2939999961853027,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.place_outlined,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '15 Minutes Away',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 11,
                                            color: const Color(0xff474749),
                                            letterSpacing: 0.2939999961853027,
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$ 12',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            color: const Color(0xffee6a61),
                                            letterSpacing: 0.3821999950408935,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          '\$ 18',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            color: const Color(0x71464646),
                                            letterSpacing: 0.3821999950408935,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),

              ///Cards container
              Container(
                height: 400,
                child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 255, 200, 188)),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mega',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: const Color(0xffd03a27),
                                      letterSpacing: 0.323399995803833,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const Text.rich(
                                    TextSpan(
                                      text: 'WHOPP',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 31,
                                        color: const Color(0xff21114b),
                                        letterSpacing: 0.9113999881744385,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'E',
                                            style:
                                                TextStyle(color: Colors.red)),
                                        TextSpan(
                                            text: 'R',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      '\$ 17',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color: const Color(0xffee6a61),
                                        letterSpacing: 0.5291999931335449,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '\$ 32',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color: const Color(0xffffffff),
                                        letterSpacing: 0.5291999931335449,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '* Available until 24 December 2020',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.26459999656677247,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      );
    });
  }
}
