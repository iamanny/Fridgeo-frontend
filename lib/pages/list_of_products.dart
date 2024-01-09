import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/background.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class listOfProducts extends StatefulWidget {
  const listOfProducts({super.key});

  @override
  State<listOfProducts> createState() => _listOfProducts();
}

class _listOfProducts extends State<listOfProducts> {

  String UntilOrWithin = 'null';

  final TextEditingController _titleController = TextEditingController();




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
                          _showModalBottomSheet();

                        }, //onPressed
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF333333),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.5),
                          ),
                          padding: EdgeInsets.zero,

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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





  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      barrierColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),

      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            width: double.infinity,
            height: UntilOrWithin == 'validWithin' ? 436.0 : 350.10,

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
                Padding(padding: EdgeInsetsDirectional.only(bottom: 5)),


                SvgPicture.asset(

                  'assets/icons/Line 6.svg',
                ),


                Padding(padding: EdgeInsetsDirectional.only(top: 26.1)),

                Container(
                  width: 330,
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 17, vertical: 1),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEEEEEE),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.50),
                    ),
                  ),

                  child:
                  new TextFormField(
                    controller: _titleController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      //Hides label on focus or if filled
                      hintText: 'Название',
                      // Используйте значение параметра text
                      hintStyle: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        // height: 0.08,
                      ),
                      border: InputBorder.none,
                      suffixIconConstraints: BoxConstraints(
                          maxHeight: 20, maxWidth: 20),

                      suffixIcon: SizedBox(
                        width: 20,
                        height: 20,
                        child: IconButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),

                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/Barcode.svg'),
                          iconSize: 20,
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 17, vertical: 1),
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
                      CustomRadio(
                        value: 'validUntil',
                        groupValue: UntilOrWithin,
                        onChanged: (value) {
                          setState(() {
                            UntilOrWithin = value!;
                          });
                        },
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 15.0)),

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
                      Expanded(
                        child: SizedBox(),
                      ),
                      if (UntilOrWithin == 'validUntil')
                        Container(
                          width: 100,
                          child: TextFormField(
                            inputFormatters: [
                              MaskTextInputFormatter(mask: '##.##.##', filter: {
                                "#": RegExp(r'[0-9]')
                              }),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'ДД.ММ.ГГ',
                              hintStyle: TextStyle(
                                color: Color(0xFF8D8D8D),
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            autofocus: false,
                          ),
                        ),


                      SvgPicture.asset(
                        'assets/icons/Calendar.svg',
                        width: 20,
                        height: 20,
                      ),


                    ],
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 5)),

                Container(
                  width: 330,
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 17, vertical: 1),
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


                      CustomRadio(
                        value: 'validWithin',
                        groupValue: UntilOrWithin,
                        onChanged: (value) {
                          setState(() {
                            UntilOrWithin = value!;
                          });
                        },
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 15.0)),

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


                if (UntilOrWithin != 'validWithin')
                Column(
                  children: [
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
                  ],
                ),


                if (UntilOrWithin == 'validWithin')
                  WindowWithin(),

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
        });
      },
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: InkWell(
            onTap: () {
              _decrease();
            },
            child: SvgPicture.asset(
              'assets/icons/Group 10414.svg',
              width: 24,
              height: 24,
            ),
          ),
        ),
        Padding(padding: EdgeInsetsDirectional.only(start: 10)),



        Column(
          // mainAxisAlignment: MainAxisAlignment.center,

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
        Padding(padding: EdgeInsetsDirectional.only(start: 10)),

        SizedBox(
          height: 20,
          width: 20,
          child: InkWell(
            onTap: () {
              _increase();
            },
            child: SvgPicture.asset(
              'assets/icons/Group 10413.svg',
              width: 24,
              height: 24,
            ),
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
          widget.onChanged!(null);
        }
      },
      child: Container(
        height: 16,
        width: 16,
        padding: EdgeInsets.zero,
        decoration: ShapeDecoration(
          color: Color(0xFFE2DFDF),
          shape: const CircleBorder(
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

class WindowWithin extends StatefulWidget {
  const WindowWithin({super.key});

  @override
  State<WindowWithin> createState() => _WindowWithinState();
}

class _WindowWithinState extends State<WindowWithin> {
  String DayMonthYear = 'null';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 191,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsDirectional.only(top: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsetsDirectional.only(start: 31)),
              Container(
                width: 150,
                height: 136,
                decoration: ShapeDecoration(
                  color: Color(0xFFEEEEEE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Срок хранения:',
                      style: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Padding(padding: EdgeInsetsDirectional.only(top: 9)),
                    Count(),
                    Padding(padding: EdgeInsetsDirectional.only(top: 9)),
                    Column(
                      children: [

                        Row(
                          children: [
                            Padding(padding: EdgeInsetsDirectional.only(start: 29)),
                            CustomRadio(
                              value: 'day',
                              groupValue: DayMonthYear,
                              onChanged: (value) {
                                setState(() {
                                  DayMonthYear = value!;
                                });
                              },
                            ),
                            Padding(padding: EdgeInsetsDirectional.only(start: 16)),
                            Text(
                              'Суток',
                              style: TextStyle(
                                color: Color(0xFF505050),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],

                        ),
                        Padding(padding: EdgeInsetsDirectional.only(top: 8)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsetsDirectional.only(start: 29)),
                            CustomRadio(
                              value: 'month',
                              groupValue: DayMonthYear,
                              onChanged: (value) {
                                setState(() {
                                  DayMonthYear = value!;
                                });
                              },
                            ),
                            Padding(padding: EdgeInsetsDirectional.only(start: 16)),
                            Text(
                              'Месяцев',
                              style: TextStyle(
                                color: Color(0xFF505050),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(top: 8)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsetsDirectional.only(start: 29)),
                            CustomRadio(
                              value: 'year',
                              groupValue: DayMonthYear,
                              onChanged: (value) {
                                setState(() {
                                  DayMonthYear = value!;
                                });
                              },
                            ),
                            Padding(padding: EdgeInsetsDirectional.only(start: 16)),
                            Text(
                              'Лет',
                              style: TextStyle(
                                color: Color(0xFF505050),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),

              ),

              Padding(padding: EdgeInsetsDirectional.only(start: 5)),
              Column(
                children: [
                  Container(
                    width: 175,
                    height: 68,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEEEEEE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.50),
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Дата изготовления:',
                          style: TextStyle(
                            color: Color(0xFF8D8D8D),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Padding(padding: EdgeInsetsDirectional.only(top: 7)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsetsDirectional.only(start: 27)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                Container(
                                  width: 70,
                                  height: 14,
                                  child: TextFormField(
                                    inputFormatters: [
                                      MaskTextInputFormatter(mask: '##.##.##', filter: {
                                        "#": RegExp(r'[0-9]')
                                      }),
                                    ],
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'ДД.ММ.ГГ',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF8D8D8D),
                                        fontSize: 14,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    autofocus: false,
                                  ),
                                ),
                                Container(
                                  width: 104.29,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFF8D8D8D),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(padding: EdgeInsetsDirectional.only(start: 9)),
                            SvgPicture.asset(
                              'assets/icons/Calendar.svg',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    ),

                  ),
                  Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                  Container(
                    width: 175,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEEEEEE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
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
                        Padding(padding: EdgeInsetsDirectional.only(top: 9)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Count(),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsetsDirectional.only(top: 49)),
        ],
      ),
    );
  }
}

