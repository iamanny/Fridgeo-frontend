import 'package:flutter/material.dart';
import 'package:project/pages/list_of_products.dart';
import 'package:project/pages/incorrect_login.dart';
import 'package:project/pages/name_registration.dart';
import 'package:project/pages/start_of_registration.dart';
import 'package:project/pages/login_to_account.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/loginToAccount',
  routes: {
    '/listOfProducts': (context) => listOfProducts(),
    '/loginToAccount': (context) => loginToAccount(),
    '/startOfRegistration': (context) => startOfRegistration(),
    '/incorrectLogin': (context) => incorrectLogin(),
    '/nameRegistration': (context) => nameRegistration(),
  },
));




