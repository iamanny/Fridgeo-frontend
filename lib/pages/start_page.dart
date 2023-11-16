import 'package:flutter/material.dart';
class startPage extends StatelessWidget {
  const startPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [

            SizedBox(height: 90),
            Row(
              children: [

                ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/loginToAccount');

                    },
                    child: Text('Войти')),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/startOfRegistration');

                    },
                    child: Text('Регистрация'))
              ],
            ),
          ],
        )
    );
  }
}

