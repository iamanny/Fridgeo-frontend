import 'package:flutter/material.dart';

import 'background.dart';

class startOfRegistration extends StatefulWidget {
  const startOfRegistration({super.key});

  @override
  State<startOfRegistration> createState() => _startOfRegistrationState();
}

class _startOfRegistrationState extends State<startOfRegistration> {
  String? _errorText;
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: MyBackgroundPage(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsetsDirectional.only(top: 70.0)),
                SizedBox(
                  width: 151,
                  height: 48,
                  child: Text(
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
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 43.0)),
                SizedBox(
                  width: 148,
                  height: 24,
                  child: Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0.04,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 24.0)),
                SizedBox(
                  width: 282,
                  height: 16,
                  child: Text(
                    'Введите следующие данные для ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                ),
                SizedBox(
                  width: 282,
                  height: 16,
                  child: Text(
                    'Вашей новой учетной записи',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 27.0)),




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

                  child: new TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(hintText:
                    'Логин',
                      errorText: _getErrorText(),
                      hintStyle: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                      border: InputBorder.none,

                    ),
                    onSubmitted: (text) {
                      setState(() {
                        if (!isEmail(text)) {
                          _errorText = 'Неправильный формат почты';

                        } else {
                          _errorText = null;
                        }
                      });
                    },


                  ),
                ),

                Padding(padding: EdgeInsetsDirectional.only(top: 15.0)),
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
                    decoration: new InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsetsDirectional.only(end: 0),
                        child: GestureDetector(
                          onTap: _toggleObscured,
                          child: Icon(
                            _obscured
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 22,
                            color: Color(0xFF8D8D8D),
                          ),
                        ),
                      ),
                      hintText: 'Пароль',
                      hintStyle: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                      border: InputBorder.none,
                      // suffixIcon: IconButton(
                      //   padding: const EdgeInsetsDirectional.only(end: 16.0),
                      //   onPressed: (){
                      //     setState((){
                      //       _isObscured =! _isObscured;
                      //     });
                      //   },
                      //   icon: _isObscured ? const Icon(Icons.visibility_outlined) : const Icon(Icons.visibility_off_outlined),
                      //
                      // )


                    ),




                  ),
                ),

                Padding(padding: EdgeInsetsDirectional.only(top: 15.0)),
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
                    decoration: new InputDecoration(

                      hintText: 'Повторите пароль',
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
                Padding(padding: EdgeInsetsDirectional.only(top: 40.0)),


                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/nameRegistration');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF333333),
                        fixedSize: Size(230, 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.50),
                        )

                    ),

                    child: Text(
                      'Продолжить',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),


                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 79)),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Уже есть аккаунт? ',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        height: 0.06,
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/loginToAccount');

                      },

                      child: Text(
                        'Войти',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0.06,),

                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsetsDirectional.all(0.0),
                        foregroundColor: Colors.white,
                        minimumSize: Size.zero,
                      ),
                      onHover: null,
                    ),

                  ],
                ),
              ],

            ),
          ),
        )
      )
    );
  }
  String? _getErrorText() {
    return _errorText;
  }

  bool isEmail(String em) {
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|'
        r'(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
        r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(emailRegexp);

    return regExp.hasMatch(em);
  }
}
