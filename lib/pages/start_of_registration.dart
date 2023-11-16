import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsetsDirectional.only(top: 90.0)),
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
            Padding(padding: EdgeInsetsDirectional.only(top: 43.0)),
            Text(
              'Регистрация',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 24,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                height: 0.04,
              ),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: 25.0)),
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
                obscureText: _obscured,
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
                //keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                //focusNode: textFieldFocusNode,
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
                  Navigator.pushNamed(context, '/nameOfRegistration');
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

            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Уже есть аккаунт? ',
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                  TextSpan(
                    text: 'Войти',
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
            ),
          ],
        ),
      ),
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
