import 'package:flutter/material.dart';
import 'backgroundLR.dart';

class startOfRegistration extends StatefulWidget {
  const startOfRegistration({super.key});

  @override
  State<startOfRegistration> createState() => _startOfRegistrationState();
}

class _startOfRegistrationState extends State<startOfRegistration> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirstPageOfRegistration(),
    );
  }
}



class PasswordField extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final FocusNode focusNode;

  const PasswordField({
    Key? key,
    required this.text,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscured = true;

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
      child: new TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: _obscured,
        focusNode: widget.focusNode,
        controller: widget.controller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: widget.text,
          hintStyle: TextStyle(
            color: Color(0xFF8D8D8D),
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
          suffixIconConstraints: BoxConstraints(maxHeight: 24, maxWidth: 24),
          suffixIcon: SizedBox(
            width: 24,
            height: 24,
            child: IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              onPressed: () {
                setState(() {
                  _obscured = !_obscured;
                });
              },
              icon: Icon(
                _obscured
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                size: 24,
                color: Color(0xFF8D8D8D),
              ),
              style: IconButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsetsDirectional.all(0.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}





bool isValidLogin(String login) {
  // Реализуйте свою логику проверки логина
  // Возвращайте true, если логин корректен, и false в противном случае
  // return login.isNotEmpty && login.contains('@'); // Пример проверки на наличие символа '@'
  String emailRegexp =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|'
      r'(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(emailRegexp);

  return regExp.hasMatch(login);
}



class FirstPageOfRegistration extends StatefulWidget {
  const FirstPageOfRegistration({super.key});

  @override
  State<FirstPageOfRegistration> createState() => _FirstPageOfRegistrationState();
}

class _FirstPageOfRegistrationState extends State<FirstPageOfRegistration> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  bool _isInvalid = false; // Флаг для отображения сообщения об ошибке

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();
  bool _passwordsMatch = true;


  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      // Выполнять проверку при завершении ввода пароля при потере фокуса
      if (!_emailFocusNode.hasFocus) {
        setState(() {
          _isInvalid = !isValidLogin(_emailController.text);
        });
      }
    });

    _confirmPasswordController.addListener(() {
      setState(() {
        _passwordsMatch = _passwordController.text == _confirmPasswordController.text;
      });
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: LogBackgroundPage(
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



                    Column(
                      children: [
                        Container(
                          width: 343,
                          height: 56,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: _isInvalid ? Color(0x33D43D3D) : Color(0xFFEEEEEE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.50),
                            ),
                          ),

                          child: new TextFormField(
                            controller: _emailController,
                            focusNode: _emailFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              hintText: 'Логин',
                              hintStyle: TextStyle(
                                color: Color(0xFF8D8D8D),
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                height: 0.08,
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              setState(() {
                                _isInvalid = false;
                              });
                            },
                            onEditingComplete: () {
                              // Проверить логин при завершении редактирования
                              setState(() {
                                _isInvalid = !isValidLogin(_emailController.text);
                              });
                            },
                          ),
                        ),
                        _isInvalid
                            ? Column(
                          children: [
                            Container(
                              height: 20,
                              width: 343,
                              padding: EdgeInsets.zero,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(padding: EdgeInsetsDirectional.only(start: 5)),
                                    Text(
                                      'Неверный формат почты',
                                      style: TextStyle(
                                        color: Color(0xFFD43D3D),
                                        fontSize: 14,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        // height: 0.10,
                                      ),
                                    ),

                                  ]
                              ),
                            ),
                            Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                          ],
                        )
                            : Padding(padding: EdgeInsetsDirectional.only(top: 15))

                      ],

                    ),
                    PasswordField(
                      text: 'Пароль',
                      controller: _passwordController,
                      focusNode: _passwordFocusNode,
                    ),

                    Padding(padding: EdgeInsetsDirectional.only(top: 15.0)),

                    PasswordField(
                      text: 'Повторите пароль',
                      controller: _confirmPasswordController,
                      focusNode: _confirmPasswordFocusNode,
                    ),
                    _passwordsMatch
                        ? Padding(padding: EdgeInsetsDirectional.only(top: 40.0))
                        : Column(
                      children: [
                        Padding(padding: EdgeInsetsDirectional.only(start: 2)),
                        Container(
                          height: 20,
                          width: 343,
                          padding: EdgeInsets.zero,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsetsDirectional.only(start: 5)),
                                Text(
                                  'Введенные пароли не совпадают',
                                  style: TextStyle(
                                    color: Color(0xFFD43D3D),
                                    fontSize: 14,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w500,
                                    // height: 0.10,
                                  ),
                                ),
                              ]
                          ),
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                      ],
                    ),





                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPageOfRegistration(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            shadowColor: Colors.transparent,
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

  bool isEmail(String em) {
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|'
        r'(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
        r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(emailRegexp);

    return regExp.hasMatch(em);
  }


}


class SecondPageOfRegistration extends StatefulWidget {
  const SecondPageOfRegistration({super.key});

  @override
  State<SecondPageOfRegistration> createState() => _SecondPageOfRegistrationState();
}

class _SecondPageOfRegistrationState extends State<SecondPageOfRegistration> {
  var _value = 'man';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: LogBackgroundPage(
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
                    Padding(padding: EdgeInsetsDirectional.only(top: 29.0)),
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
                        decoration: new InputDecoration(hintText:
                        'Имя',
                          hintStyle: TextStyle(
                            color: Color(0xFF8D8D8D),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            // height: 0.08,
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

                        decoration: new InputDecoration(hintText:
                        'Фамилия',
                          hintStyle: TextStyle(
                            color: Color(0xFF8D8D8D),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            // height: 0.08,
                          ),
                          border: InputBorder.none,

                        ),

                      ),


                    ),
                    Padding(padding: EdgeInsetsDirectional.only(top: 33.0)),

                    Row(
                      children: [
                        Padding(padding: EdgeInsetsDirectional.only(start: 47.0)),
                        Text(
                          'Пол:',
                          style: TextStyle(
                            color: Color(0xFF8D8D8D),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            // height: 0.08,
                          ),
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(start: 64.0)),
                        CustomRadio(
                          value: 'man',
                          groupValue: _value,
                          onChanged: (String? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(start: 4)),
                        Text(
                          'Мужской',
                          style: TextStyle(
                            color: Color(0xFF1E1E1E),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            // height: 0.08,
                          ),
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(start: 42.0)),
                        CustomRadio(
                          value: 'woman',
                          groupValue: _value,
                          onChanged: (String? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(start: 4)),
                        Text(
                          'Женский',
                          style: TextStyle(
                            color: Color(0xFF1E1E1E),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            // height: 0.08,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsetsDirectional.only(top: 59.0)),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/listOfProducts');
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            shadowColor: Colors.transparent,
                            backgroundColor: Color(0xFF333333),
                            fixedSize: Size(230, 47),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.5),
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
                    Padding(padding: EdgeInsetsDirectional.only(top: 59.0)),
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
                            shadowColor: Colors.transparent,
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
}
class CustomRadio extends StatefulWidget {
  String value;
  String groupValue;
  Color? color;
  Color? selectColor;
  void Function(String?)? onChanged;
  CustomRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    this.color = const Color(0xFFE2DFDF),
    this.selectColor = const Color(0xFF54DD01),
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          widget.onChanged!(widget.value);
        } else {
          widget.onChanged!(null); // добавляем эту строку
        }
      },
      child: Container(
        height: 16,
        width: 16,
        padding: EdgeInsets.zero,
        decoration: ShapeDecoration(
          color: Color(0xFFE2DFDF),
          shape: OvalBorder(
            side: BorderSide(width: 0.50, color: Color(0xFFAFAFAF)),
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.zero,
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: widget.value == widget.groupValue
                  ? widget.selectColor
                  : widget.color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}



