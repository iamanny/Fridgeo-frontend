import 'package:flutter/material.dart';
import 'background.dart';

class loginToAccount extends StatefulWidget {
  const loginToAccount({super.key});

  @override
  State<loginToAccount> createState() => _loginToAccountState();
}

class _loginToAccountState extends State<loginToAccount> {
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
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 18, 16, 18),
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
                      onPressed: () {
                        SampleAppPage();

                        // Navigator.pushNamed(context, '/incorrectLogin');
                      },
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Text(
                        'Нет аккаунта? ',
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
                          Navigator.pushNamed(context, '/startOfRegistration');

                        },

                        child: Text(
                          'Создать аккаунт',
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
                  )

                ],

              ),
            ),
          )
        )
    );

  }
}

class PasswordField extends StatefulWidget {
  // final String text;
  const PasswordField({Key? key, /**required this.text*/}) : super(key: key);

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
        ),
      ),
    );
  }
}


class SampleApp extends StatelessWidget {
  const SampleApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({super.key});

  @override
  State<SampleAppPage> createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  String? _errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: TextField(
          onSubmitted: (text) {
            setState(() {
              if (!isEmail(text)) {
                _errorText = 'Error: This is not an email';
              } else {
                _errorText = null;
              }
            });
          },
          decoration: InputDecoration(
            hintText: 'This is a hint',
            errorText: _getErrorText(),
          ),
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
  }}
