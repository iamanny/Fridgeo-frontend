import 'dart:ui';
import 'package:flutter/material.dart';


class MyBackgroundPage extends StatelessWidget {
  final Widget child;

  const MyBackgroundPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Positioned(
          top: -99,
          left: -89,
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xFF9BE56E),
              shape: OvalBorder(),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 40.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
            width: 304,
            height: 284,
          ),
        ),


        // Добавляем содержимое страницы поверх фона
        child,
      ],
    );
  }
}
