

import 'package:flutter/material.dart';
import 'backgroundLR.dart';

class nameRegistration extends StatefulWidget {
  const nameRegistration({super.key});

  @override
  State<nameRegistration> createState() => _nameRegistrationState();
}

class _nameRegistrationState extends State<nameRegistration> {
  var _value = -1;

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
                          value: 1,
                          groupValue: _value,
                          onChanged: (int? value){
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
                          value: 2,
                          groupValue: _value,

                          onChanged: (int? value){
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
  int value;
  int groupValue;
  Color? color;
  Color? selectColor;
  void Function(int?)? onChanged;
  CustomRadio({
    Key ? key,
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
      onTap: (){
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          //set widget.value in param
          widget.onChanged!(widget.value);
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
                  ? widget.selectColor   // Цвет маленькой окружности при активном состоянии
                  : widget.color, // Цвет маленькой окружности при неактивном состоянии
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),

    );
  }
}
