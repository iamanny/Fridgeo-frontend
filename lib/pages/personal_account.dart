import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({super.key});

  @override
  State<PersonalAccount> createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
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
                      'assets/icons/List.svg',
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
                            color: Color(0xFF505050),
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
                  Navigator.pushNamed(context, '/personalAccount');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Profile_active.svg',
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
                            color: Color(0xFF74B44E),
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
      body: MyBackgroundPage(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsetsDirectional.only(top: 22)),
                Text(
                  'Личный кабинет',
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    // height: 0,
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 37)),
                Container(
                  width: 151,
                  height: 151,
                  child: CircleAvatar(

                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 8)),
                Text(
                  'Имя Фамилия',
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    // height: 0,
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SvgPicture.asset('assets/icons/ChangePersonalData.svg',
                    height: 12,
                    width: 13),
                    Padding(padding: EdgeInsetsDirectional.only(start: 5)),
                    Text(
                      'Изменить',
                      style: TextStyle(
                        color: Color(0xFF0E971C),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 28)),
                Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400, // Цвет тени
                        offset: Offset(0.0, -2.0), // Смещение тени по x и y
                        blurRadius: 20.0, // Радиус размытия тени

                      ),
                    ],


                  ),
                  child: Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsetsDirectional.only(start: 17)),
                          SvgPicture.asset('assets/icons/Achievements.svg',
                          width: 14.4,
                          height: 18),
                          Padding(padding: EdgeInsetsDirectional.only(start: 12.6)),
                          Text(
                            'Достижения',
                            style: TextStyle(
                              color: Color(0xFF1E1E1E),
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Padding(padding: EdgeInsetsDirectional.only(start: 166)),
                          InkWell(
                            onTap: (){},
                              child: SvgPicture.asset('assets/icons/Open.svg')
                          )
                        ],
                      ),


                    ],
                  ),
                ),

                Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400, // Цвет тени
                        offset: Offset(0.0, 0.0), // Смещение тени по x и y
                        blurRadius: 10.0, // Радиус размытия тени
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsetsDirectional.only(start: 18)),
                      SvgPicture.asset('assets/icons/Language.svg',
                          width: 17.5,
                          height: 17.7),
                      Padding(padding: EdgeInsetsDirectional.only(start: 8.5)),
                      Text(
                        'Язык',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 227)),
                      InkWell(
                          onTap: (){},
                          child: SvgPicture.asset('assets/icons/Open.svg')
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400, // Цвет тени
                        offset: Offset(0.0, 0.0), // Смещение тени по x и y
                        blurRadius: 10.0, // Радиус размытия тени
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsetsDirectional.only(start: 18)),
                      SvgPicture.asset('assets/icons/Notifications.svg',
                          width: 16,
                          height: 18),
                      Padding(padding: EdgeInsetsDirectional.only(start: 10)),
                      Text(
                        'Уведомления',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 159)),
                      InkWell(
                          onTap: (){},
                          child: SvgPicture.asset('assets/icons/Open.svg')
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400, // Цвет тени
                        offset: Offset(0.0, 0.0), // Смещение тени по x и y
                        blurRadius: 10.0, // Радиус размытия тени
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsetsDirectional.only(start: 18)),
                      SvgPicture.asset('assets/icons/Support.svg',
                          width: 18,
                          height: 18),
                      Padding(padding: EdgeInsetsDirectional.only(start: 8)),
                      Text(
                        'Сообщить об ошибке',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 97)),
                      InkWell(
                          onTap: (){},
                          child: SvgPicture.asset('assets/icons/Open.svg')
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400, // Цвет тени
                        offset: Offset(0.0, 4.0), // Смещение тени по x и y
                        blurRadius: 20.0, // Радиус размытия тени
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsetsDirectional.only(start: 18)),
                      SvgPicture.asset('assets/icons/Premium.svg',
                          width: 18,
                          height: 18),
                      Padding(padding: EdgeInsetsDirectional.only(start: 8)),
                      Text(
                        'Премиум подписка',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 114)),
                      InkWell(
                          onTap: (){},
                          child: SvgPicture.asset('assets/icons/Open.svg')
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 60)),
                Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, // Цвет тени
                        offset: Offset(0.0, 0.0), // Смещение тени по x и y
                        blurRadius: 20.0, // Радиус размытия тени

                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsetsDirectional.only(start: 18)),
                      SvgPicture.asset('assets/icons/AboutTheApp.svg',
                          width: 18,
                          height: 18),
                      Padding(padding: EdgeInsetsDirectional.only(start: 8)),
                      Text(
                        'О приложении',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 149)),
                      InkWell(
                          onTap: (){},
                          child: SvgPicture.asset('assets/icons/Open.svg')
                      )
                    ],
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
