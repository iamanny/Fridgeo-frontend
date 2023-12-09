import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/background.dart';
import 'package:untitled/pages/backgroundLR.dart';


class proba extends StatefulWidget {
  const proba({super.key});

  @override
  State<proba> createState() => _probaState();
}

class _probaState extends State<proba> {
  var _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackgroundPage(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 50)),
              SvgPicture.asset('assets/icons/Analytics.svg',
                width: 40,
                height: 40,),
              IconButton(
                icon: SvgPicture.asset('assets/icons/Analytics.svg'),
                onPressed: (){},

              )

            ]
          )
        ),
      ),
    );
  }
}