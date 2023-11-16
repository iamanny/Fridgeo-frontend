import 'package:flutter/material.dart';

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

      body:
      SingleChildScrollView(

            child: SafeArea(
              child: Center(
            child: Column(

              mainAxisSize: MainAxisSize.max,
              children: [

                Container(
                  width: 390,
                  height: 844,
                  //clipBehavior: Clip.antiAlias,
                  //decoration: BoxDecoration(color: Colors.white),
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
                      Positioned(
                        left: 0,
                        top: 768,
                        child: Container(
                          width: 390,
                          height: 76,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 390,
                                  height: 76,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFAFAFA),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 2,
                                        strokeAlign: BorderSide.strokeAlignOutside,
                                        color: Color(0xFFF1F1F1),
                                      ),
                                    ),
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
              ],
            ),
          ),),
      ),

    );
  }
}



