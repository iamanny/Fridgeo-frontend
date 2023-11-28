import 'dart:ui';
import 'package:flutter/material.dart';


class LogBackgroundPage extends StatelessWidget {
  final Widget child;

  const LogBackgroundPage({Key? key, required this.child}) : super(key: key);

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

