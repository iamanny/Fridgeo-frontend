import 'package:flutter/material.dart';

class nameOfRegistration extends StatefulWidget {
  const nameOfRegistration({super.key});

  @override
  State<nameOfRegistration> createState() => _nameOfRegistrationState();
}

class _nameOfRegistrationState extends State<nameOfRegistration> {
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

              child: new TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(hintText:
                'Имя',
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
                decoration: new InputDecoration(

                  hintText: 'Фамилия',
                  hintStyle: TextStyle(
                    color: Color(0xFF8D8D8D),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                  border: InputBorder.none,

                ),


                obscureText: _isObscured,

              ),
            ),

            Padding(padding: EdgeInsetsDirectional.only(top: 33.0)),

            Positioned(
              left: 47,
              top: 450,
                child: Container(
                  width: 305,
                  height: 20,
                  child: Stack(
                    children: [
                    Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      'Пол:',
                      style: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),


                  Positioned(
                    left: 232,
                    top: 0,

                    child: Text(
                    'Женский',
                    style: TextStyle(
                      color: Color(0xFF8D8D8D),
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),

                  ),),

                      Positioned(
                        left: 100,
                        top: 0,

                        child: Text(
                          'Мужской',
                          style: TextStyle(
                            color: Color(0xFF8D8D8D),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),

                        ),),
                ],


                ),


            ),
            ),


            Padding(padding: EdgeInsetsDirectional.only(top: 59.0)),


            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listOfProducts');

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
}
