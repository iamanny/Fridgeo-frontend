import 'package:flutter/material.dart';
import 'package:untitled/pages/incorrect_login.dart';
import 'package:untitled/pages/list_of_products.dart';
import 'package:untitled/pages/login_to_account.dart';
import 'package:untitled/pages/name_registration.dart';
import 'package:untitled/pages/start_of_registration.dart';

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




