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
      Center(
        child: SafeArea(
          //child: Center(
          child: Column(

            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: Container(
                width: 390,
                height: 844,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
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

                            child: ElevatedButton(
                              // onPressed: () { Navigator.pushNamed(context, '/startOfRegistration'); },
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF333333),
                                  //fixedSize: Size(200, 47),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.5),
                                  ),
                              ),
                              child: null,
                            ),
                          ),

                          Positioned(
                            top: 16,
                            left: 33,
                            child: const Text(
                            'Добавить продукт',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          ),

                          Positioned(
                            top: 14,
                            left: 5,

                            child: Icon(
                            Icons.add_circle_outline_sharp,
                              color: Colors.white),
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
                              left: 45,
                              top: 10,
                              child: Stack(
                                children: [
                                  Container(
                                    child : IconButton(
                                      onPressed: () {},
                                      icon: const Icon (Icons.home_filled),
                                      color: Color(0xFF333333),
                                      iconSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Positioned(
                              left: 178,
                              top: 10,
                              child: Stack(
                                children: [
                                  Container(
                                    child : IconButton(
                                      onPressed: () {},
                                      icon: const Icon (Icons.analytics_outlined),
                                      color: Color(0xFF333333),
                                      iconSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Positioned(
                              left: 308,
                              top: 10,
                              child: Stack(
                                children: [
                                  Container(
                                    child : IconButton(
                                      onPressed: () {},
                                      icon: const Icon (Icons.person_outline_rounded),
                                      color: Color(0xFF333333),
                                      iconSize: 30,
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
    );
  }
}




















