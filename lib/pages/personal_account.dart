import 'package:flutter/material.dart';
import 'package:untitled/pages/background.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({super.key});

  @override
  State<PersonalAccount> createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Padding(padding: EdgeInsetsDirectional.only(top: 42)),
                Container(
                  width: 155,
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
                  children: [
                    Icon(
                      Icons.create_outlined,
                      size: 13,
                      color: Color(0xFF0E971C),

                    ),
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
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.50),
                    ),
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
