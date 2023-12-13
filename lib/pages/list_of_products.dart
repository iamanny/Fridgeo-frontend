import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/background.dart';


class listOfProducts extends StatefulWidget {
  const listOfProducts({super.key});

  @override
  State<listOfProducts> createState() => _listOfProducts();
}

class _listOfProducts extends State<listOfProducts> {
  var _value = -1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: 76,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xFFF1F1F1),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: 43,
                width: 38,
                child: InkWell(
                  onTap: () {
                    // Обработчик нажатия
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/List_active.svg',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(height: 7), // Внутренний отступ между иконкой и текстом
                      SizedBox(
                        height: 12,
                        width: 38,
                        child: Center(
                          child: Text(
                            'Список',
                            style: TextStyle(
                              color: Color(0xFF74B44E),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsetsDirectional.only(start: 87)),

              SizedBox(
                height: 43,
                width: 55,
                child: InkWell(
                  onTap: () {
                    // Обработчик нажатия
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Analytics.svg',
                        width: 23.4,
                        height: 23.4,
                      ),
                      SizedBox(height: 7.6), // Внутренний отступ между иконкой и текстом
                      SizedBox(
                        height: 12,
                        width: 55,
                        child: Center(
                          child: Text(
                            'Аналитика',
                            style: TextStyle(
                              color: Color(0xFF505050),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsetsDirectional.only(start: 78)),

              SizedBox(
                height: 43,
                width: 47,
                child: InkWell(
                  onTap: () {
                    // Обработчик нажатия
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Profile.svg',
                        width: 15.6,
                        height: 20.8,
                      ),
                      SizedBox(height: 10.2), // Внутренний отступ между иконкой и текстом
                      SizedBox(
                        width: 47,
                        height: 12,
                        child: Center(
                          child: Text(
                            'Профиль',
                            style: TextStyle(
                              color: Color(0xFF505050),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      resizeToAvoidBottomInset : false,
      body: MyBackgroundPage(
        child: SafeArea(
          child: Center(
            child: Column(

              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsetsDirectional.only(top: 22)),
                Row(
                  children: [
                    Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                    Text(
                      'fridgeo',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 48,
                        fontFamily: 'Play',
                        fontWeight: FontWeight.w700,
                        // height: 0.02,
                        letterSpacing: -2.40,
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 50)),
                Text(
                  'Список продуктов',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    // height: 0,
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 212)),
                Text(
                  'Тут пока пусто',
                  style: TextStyle(
                    color: Color(0xFF8D8D8D),
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 217)),
                Container(
                  width: 191,
                  height: 52,
                  padding: EdgeInsets.zero,

                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.white,
                        barrierColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return Container(
                            width: 391,
                            height: 350.10,

                            decoration: BoxDecoration(

                              color: Colors.white,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 10,
                                  blurRadius: 55,
                                  offset: Offset(0, 3),
                                  // changes the position of the shadow
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsetsDirectional.only(top: 10)),


                                SvgPicture.asset(

                                    'assets/icons/Line 6.svg',
                                  ),


                                Padding(padding: EdgeInsetsDirectional.only(top: 26.1)),

                                Container(
                                  width: 330,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
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
                                    decoration: InputDecoration(
                                      floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
                                      hintText: 'Название', // Используйте значение параметра text
                                      hintStyle: TextStyle(
                                        color: Color(0xFF8D8D8D),
                                        fontSize: 16,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        // height: 0.08,
                                      ),
                                      border: InputBorder.none,
                                      suffixIconConstraints: BoxConstraints(maxHeight: 24, maxWidth: 24),

                                      suffixIcon: SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: IconButton(
                                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),

                                          onPressed: () {
                                          },
                                          icon: SvgPicture.asset('assets/icons/ph_barcode-thin.svg'),
                                          iconSize: 24,
                                          color: Color(0xFF8D8D8D),
                                          style: IconButton.styleFrom(
                                            minimumSize: Size.zero,
                                            padding: EdgeInsetsDirectional.all(0.0),

                                          ),
                                        ),
                                      ),
                                    ),

                                  ),
                                ),
                                Padding(padding: EdgeInsetsDirectional.only(top: 5)),

                                Container(
                                  width: 330,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEEEEEE),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.50),
                                    ),
                                  ),


                                  child:
                                  Row(
                                    mainAxisSize: MainAxisSize.min,

                                    children: [
                                      Container(

                                      ),
                                      Padding(padding: EdgeInsetsDirectional.only(start: 0)),

                                      CustomRadio(
                                        value: 1,
                                        groupValue: _value,

                                        onChanged: (int? value){
                                          setState(() {
                                            _value = value!;
                                          });
                                        },
                                      ),
                                      Padding(padding: EdgeInsetsDirectional.only(start: 10.0)),

                                      Text(
                                        'Годен до:',
                                        style: TextStyle(
                                          color: Color(0xFF8D8D8D),
                                          fontSize: 16,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsetsDirectional.only(start: 167.0)),


                                      SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: IconButton(
                                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),

                                          onPressed: () {
                                          },
                                          icon: SvgPicture.asset('assets/icons/Vector.svg'),
                                          iconSize: 24,
                                          color: Color(0xFF8D8D8D),
                                          style: IconButton.styleFrom(
                                            minimumSize: Size.zero,
                                            padding: EdgeInsetsDirectional.all(0.0),
                                          ),
                                        ),
                                      ),
                                          //border: InputBorder.none,
                                          //suffixIconConstraints: BoxConstraints(maxHeight: 24, maxWidth: 24),

                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsetsDirectional.only(top: 5)),

                                Container(
                                  width: 330,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEEEEEE),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.50),
                                    ),
                                  ),

                                  child:
                                  Row(
                                      mainAxisSize: MainAxisSize.min,

                                      children: [
                                      Container(

                                  ),
                                  Padding(padding: EdgeInsetsDirectional.only(start: 0)),

                                  CustomRadio(
                                    value: 2,
                                    groupValue: _value,

                                    onChanged: (int? value){
                                      setState(() {
                                        _value = value!;
                                      });
                                    },
                                  ),
                                  Padding(padding: EdgeInsetsDirectional.only(start: 10.0)),

                                  Text(
                                    'Годен в течение:',
                                    style: TextStyle(
                                      color: Color(0xFF8D8D8D),
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                      ],
                                  ),

                                ),
                                Padding(padding: EdgeInsetsDirectional.only(top: 16.0)),

                                Row(
                                  children: [
                                    Padding(padding: EdgeInsetsDirectional.only(start: 96.0)),
                                    Text(
                                      'Количество:',
                                      style: TextStyle(
                                        color: Color(0xFF8D8D8D),
                                        fontSize: 16,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    Padding(padding: EdgeInsetsDirectional.only(start: 15.0)),

                                    Count(),
                                  ],
                                ),
                                Padding(padding: EdgeInsetsDirectional.only(top: 41.0)),


                                Container(

                                  child: ElevatedButton(
                                    onPressed: () {
                                      //Navigator.pushNamed(context, '/listOfProducts');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0.0,
                                      shadowColor: Colors.transparent,
                                      backgroundColor: Color(0xFF333333),
                                      fixedSize: Size(190, 44),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.5),
                                      ),
                                    ),

                                    child: Text(
                                      'Сохранить',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          );
                        },
                      );

                    }, //onPressed
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF333333),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.5),
                      ),
                      padding: EdgeInsets.zero,

                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(padding: EdgeInsetsDirectional.only(start: 6)),
                        Icon(
                          Icons.add_circle_outline_sharp,
                          color: Colors.white,
                          size: 20,
                          opticalSize: 20.0,
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(start: 8)),

                        Text(
                          'Добавить продукт',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
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

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          IconButton(

            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            onPressed: _decrease,
            icon: SvgPicture.asset('assets/icons/Group 10414.svg'),
            iconSize: 20,
            color: Color(0xFF8D8D8D),
            style: IconButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsetsDirectional.all(0.0),
            ),
          ),
          //Padding(padding: EdgeInsetsDirectional.only(start: 3)),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(

                child: Text(
                  '$_count',
                  style: TextStyle(
                    color: Color(0xFF505050),
                    fontSize: 14,
                    fontFamily: 'Quantico',
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ),
              SizedBox(height: 1),
              Container(
                width: 16,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.7,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF505050),
                    ),
                  ),
                ),
              ),

            ],
          ),
          //Padding(padding: EdgeInsetsDirectional.only(start: 3)),

          IconButton(

            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            onPressed: _increase,
            icon: SvgPicture.asset('assets/icons/Group 10413.svg'),
            iconSize: 20,
            color: Color(0xFF8D8D8D),
            style: IconButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsetsDirectional.all(0.0),
            ),
          ),
        ],
      );
  }
  void _decrease(){
    if (_count > 0){
      setState(() {
        _count -= 1;
      });
    }
  }

  void _increase(){
    setState(() {
      _count += 1;
    });
  }
}














