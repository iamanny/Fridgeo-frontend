

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(

            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 90),
                Text(
                  'fridgeo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Play',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -2.4,
                    height: 1,
                  ),

                ),
                SizedBox(height: 79),
                Text(
                  'Личный кабинет',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),

                ),
                SizedBox(height: 40), //40+...+15+...+40



                Container(
                  width: 343,
                  height: 56,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEEEEEE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.50),
                    ),
                  ),

                  child: new TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(hintText:
                    'Логин',
                      hintStyle: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                      border: InputBorder.none,

                    ),

                  ),
                ),

                SizedBox(height: 15),
                Container(
                  width: 343,
                  height: 56,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEEEEEE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.50),
                    ),
                  ),
                  child: new TextFormField(
                    decoration: new InputDecoration(hintText: 'Пароль',
                      hintStyle: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                      border: InputBorder.none,

                    ),

                    obscureText: true,

                  ),
                ),

                SizedBox(height: 15),

                Row(


                  children: [
                    SizedBox(width: 250),
                    Text(
                      'Забыли пароль?',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0.07,
                      ),),
                  ],
                ),
                SizedBox(height: 21),

                entrance(),
                SizedBox(height: 79),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Нет аккаунта? ',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 0.06,
                        ),
                      ),
                      TextSpan(
                        text: 'Создать аккаунт',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                    ],
                  ),
                )
              ],

            ),
          ),
        )
    );
  }
}


class entrance extends StatefulWidget {
  const entrance ({Key? key}) : super(key: key);

  @override
  State<entrance> createState() => _entranceState();
}

class _entranceState extends State<entrance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {  },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF333333),
            fixedSize: Size(200, 47),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.5),
            )

        ),

        child: Text(
          'Войти',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),


      ),
    );
  }
}











