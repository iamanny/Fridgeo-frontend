import 'package:flutter/material.dart';
import 'package:project/pages/name_registration.dart';
import 'package:project/pages/start_of_registration.dart';
import 'package:project/pages/login_to_account.dart';
import 'package:project/pages/start_page.dart';
import 'package:project/pages/list_of_products.dart';


void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (context) => startPage(),
    '/loginToAccount': (context) => loginToAccount(),
    '/startOfRegistration': (context) => startOfRegistration(),
    '/nameOfRegistration' : (context) => nameOfRegistration(),
    '/listOfProducts' : (context) => listOfProducts(),

  },
));


