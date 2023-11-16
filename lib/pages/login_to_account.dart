import 'package:flutter/material.dart';

class loginToAccount extends StatefulWidget {
  const loginToAccount({super.key});

  @override
  State<loginToAccount> createState() => _loginToAccountState();
}

class _loginToAccountState extends State<loginToAccount> {
  var _isObscured = true;

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
            Padding(padding: EdgeInsetsDirectional.only(top: 79.0)),
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
            Padding(padding: EdgeInsetsDirectional.only(top: 40.0)),



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

            Padding(padding: EdgeInsetsDirectional.only(top: 15.0)),
            PasswordField(),

            Padding(padding: EdgeInsetsDirectional.only(top: 15.0)),

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
            Container(
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
            ),


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
    );

  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
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
    return Container(
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

      child:
      new TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: _obscured,
        focusNode: textFieldFocusNode,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
          hintText: "Пароль",
          hintStyle: TextStyle(
            color: Color(0xFF8D8D8D),
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
            height: 0.08,
          ),
          border: InputBorder.none,

          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(80, 16, 16, 16),
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
        ),
      ),
    );
  }
}
