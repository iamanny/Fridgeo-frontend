import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/background.dart';


class listOfProducts extends StatefulWidget {
  const listOfProducts({super.key});

  @override
  State<listOfProducts> createState() => _listOfProducts();
}

class _listOfProducts extends State<listOfProducts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: 43,
                width: 38,
                child: InkWell(
                  onTap: () {
                    // Обработчик нажатия
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/List_active.svg',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(height: 7), // Внутренний отступ между иконкой и текстом
                      SizedBox(
                        height: 12,
                        width: 38,
                        child: Center(
                          child: Text(
                            'Список',
                            style: TextStyle(
                              color: Color(0xFF74B44E),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsetsDirectional.only(start: 87)),

              SizedBox(
                height: 43,
                width: 55,
                child: InkWell(
                  onTap: () {
                    // Обработчик нажатия
                  },

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Analytics.svg',
                        width: 23.4,
                        height: 23.4,
                      ),
                      SizedBox(height: 7.6), // Внутренний отступ между иконкой и текстом
                      SizedBox(
                        height: 12,
                        width: 55,
                        child: Center(
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
                      )
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsetsDirectional.only(start: 78)),

              SizedBox(
                height: 43,
                width: 47,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/personalAccount');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Profile.svg',
                        width: 15.6,
                        height: 20.8,
                      ),
                      SizedBox(height: 10.2), // Внутренний отступ между иконкой и текстом
                      SizedBox(
                        width: 47,
                        height: 12,
                        child: Center(
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
                      ),
                    ],
                  ),
                ),
              ),










            ],
          ),
        ),
      resizeToAvoidBottomInset : false,
      body: MyBackgroundPage(
        child: SafeArea(
          child: Center(
            child: Column(

              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsetsDirectional.only(top: 22)),
                Row(
                  children: [
                    Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                    Text(
                      'fridgeo',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 48,
                        fontFamily: 'Play',
                        fontWeight: FontWeight.w700,
                        // height: 0.02,
                        letterSpacing: -2.40,
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 50)),
                Text(
                  'Список продуктов',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    // height: 0,
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 212)),
                Text(
                  'Тут пока пусто',
                  style: TextStyle(
                    color: Color(0xFF8D8D8D),
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    // height: 0,
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 217)),
                Container(
                  width: 191,
                  height: 52,
                  padding: EdgeInsets.zero,

                  child: ElevatedButton(
                    // onPressed: () { Navigator.pushNamed(context, '/startOfRegistration'); },
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return Opacity(
                            opacity: 0.20,
                            child: Container(
                              width: 391,
                              height: 350.10,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    topRight: Radius.circular(35),
                                  ),
                                ),
                              ),
                            ),);
                        },
                      );
                    }, //onPressed
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF333333),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.5),
                      ),
                      padding: EdgeInsets.zero,

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

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
        )
    )
    );
  }
}






















