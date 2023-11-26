import 'package:first_project/layout/home_layout.dart';
import 'package:first_project/modules/bmi/bmi_calculator.dart';
import 'package:first_project/modules/counter/counter_screen.dart';
//impo'package:first_project/modules/home/home_screen.dart'rt';   //auto generated when adding  debugShowCheckedModeBanner: false,

import 'package:first_project/modules/login/login_screen.dart';
import 'package:first_project/modules/messanger/messanger_screen.dart';
import 'package:first_project/test.dart';
import 'package:first_project/modules/users/users_model.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MyApp());
  //MyApp app = MyApp();
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}


