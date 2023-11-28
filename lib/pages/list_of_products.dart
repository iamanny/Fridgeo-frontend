import 'package:flutter/material.dart';
import 'package:project/pages/background.dart';
import 'dart:ui';



class listOfProducts extends StatefulWidget {
  const listOfProducts({super.key});

  @override
  State<listOfProducts> createState() => _listOfProducts();
}

class _listOfProducts extends State<listOfProducts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,

        body: MyBackgroundPage(


          child: Center(
            child: SafeArea(
              //child: Center(
              child: Column(

                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(

                    child: Container(
                      width: 390,
                      height: 844,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(color: Colors.transparent),

                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            top: 50,
                            child: Text(
                              'fridgeo',
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 48,
                                fontFamily: 'Play',
                                fontWeight: FontWeight.w700,
                                height: 0.02,
                                letterSpacing: -2.40,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 89,
                            top: 148,
                            child: Text(
                              'Список продуктов',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 110,
                            top: 408,
                            child: Text(
                              'Тут пока пусто',
                              style: TextStyle(
                                color: Color(0xFF8D8D8D),
                                fontSize: 24,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          //SizedBox(height: 267,),

                          Positioned(
                            left: 100,
                            top: 610,
                            child:  Stack(
                              children: [
                                Container(
                                  width: 191,
                                  height: 52,
                                  padding: EdgeInsets.zero,

                                  child: ElevatedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        backgroundColor: Colors.pinkAccent,
                                        barrierColor: Colors.transparent,
                                        elevation: 50,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(35),
                                            topRight: Radius.circular(35),
                                          ),
                                        ),
                                        context: context,
                                        isScrollControlled: true,
                                        builder: (context) {


                                          return Container(
                                              width: 391,
                                              height: 350.10,

                                            child: Column(
                                              children: [
                                                Padding(padding: EdgeInsetsDirectional.only(top: 50)),
                                                Text('fkfkf')
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF333333),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.5),
                                      ),
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(padding: EdgeInsetsDirectional.only(start: 6)),
                                        Icon(
                                          Icons.add_circle_outline_sharp,
                                          color: Colors.white,
                                          size: 20,
                                          opticalSize: 20.0,
                                        ),
                                        Padding(padding: EdgeInsetsDirectional.only(start: 8)),

                                        Text(
                                          'Добавить продукт',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500,
                                            height: 0,

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                            left: 0,
                            top: 676,
                            child: Container(
                              width: 390,
                              height: 76,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFFAFAFA),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Color(0xFFF1F1F1),
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 48,
                                    top: 47,
                                    child: Container(
                                      width: 306,
                                      height: 12,
                                      padding: EdgeInsets.zero,
                                      child: const Stack(
                                        children: [
                                          Positioned(
                                            left: 125,
                                            top: 0,
                                            child: Text(
                                              'Аналитика',
                                              style: TextStyle(
                                                color: Color(0xFF505050),
                                                fontSize: 10,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                              'Список',
                                              style: TextStyle(
                                                color: Color(0xFF505050),
                                                fontSize: 10,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 259,
                                            top: 0,
                                            child: Text(
                                              'Профиль',
                                              style: TextStyle(
                                                color: Color(0xFF505050),
                                                fontSize: 10,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    left: 41,
                                    top: 10,
                                    child: Stack(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.zero,
                                          child : IconButton(
                                            onPressed: () {},
                                            icon: const Icon (Icons.home_filled),
                                            color: Color(0xFF333333),
                                            iconSize: 24,
                                            padding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Positioned(
                                    left: 174,
                                    top: 10,
                                    child: Stack(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.zero,
                                          child : IconButton(
                                            onPressed: () {},
                                            icon: const Icon (Icons.analytics_outlined),
                                            color: Color(0xFF333333),
                                            iconSize: 24,
                                            padding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Positioned(
                                    left: 304,
                                    top: 10,
                                    child: Stack(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.zero,
                                          child : IconButton(
                                            onPressed: () {},
                                            icon: const Icon (Icons.person_outline_rounded),
                                            color: Color(0xFF333333),
                                            iconSize: 24,
                                            padding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}




