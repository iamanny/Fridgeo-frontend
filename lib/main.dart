


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/pages/incorrect_login.dart';
import 'package:untitled/pages/name_registration.dart';
import 'package:untitled/pages/prob.dart';
import 'package:untitled/pages/start_of_registration.dart';
import 'package:untitled/pages/login_to_account.dart';
import 'package:untitled/pages/start_page.dart';

void main() => runApp(MaterialApp(
  // theme: ThemeData(
  //   // Здесь устанавливаем тему для всего приложения
  //   scaffoldBackgroundColor: Colors.transparent, // Прозрачный цвет фона
  //   // Включаем ваш кастомный фон
  //   pageTransitionsTheme: PageTransitionsTheme(
  //     builders: {
  //       TargetPlatform.android: MyPageTransitionsBuilder(),
  //       TargetPlatform.iOS: MyPageTransitionsBuilder(),
  //     },
  //   ),
  // ),





  initialRoute: '/loginToAccount',
  routes: {
    '/': (context) => startPage(),
    '/loginToAccount': (context) => loginToAccount(),
    '/startOfRegistration': (context) => startOfRegistration(),
    '/incorrectLogin': (context) => incorrectLogin(),
    '/nameRegistration': (context) => nameRegistration(),
    // '/proba': (context) => loginToAccount(),
  },
));


class MyPageTransitionsBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    // Используем ваш кастомный фон в качестве фона страницы
    return MyBackgroundPage(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
class MyBackgroundPage extends StatelessWidget {
  final Widget child;

  const MyBackgroundPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
        ),

        // Ваш кастомный фон здесь
        Positioned(
          top: -79,
          left: -89,
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xFF9BE56E),
              shape: OvalBorder(),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
            width: 304,
            height: 284,
          ),
        ),
        // Container(
        //   color: Colors.white,
        //   width: double.infinity,
        //   height: double.infinity,
        // ),
        Positioned(
          top: 666,
          left: -163,
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xFF9BE56E),
              shape: OvalBorder(),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 70.0, sigmaY: 70.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
            width: 498,
            height: 469,
          ),
        ),
        // Добавляем содержимое страницы поверх фона
        child,
      ],
    );
  }
}

