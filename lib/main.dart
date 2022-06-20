import 'package:flutter/material.dart';
import 'package:resume_app/F_Screen.dart';
import 'package:resume_app/Resume/Resume2Screen.dart';
import 'package:resume_app/Resume/ResumeScreen.dart';
import 'package:resume_app/S_Screen.dart';
import 'package:resume_app/Third_Screen.dart';

import 'Resume/DataScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'data',
      routes: {
        '/': (context) => F_Screen(),
        'second/': (context) => S_Screen(),
        'third': (context) => Third_Screen(),
        'resume': (context) => ResumeScreen(),
        'data': (context) => DataScreen(),
        'resume2': (context) => Resume2Screen(),
      },
    ),
  );
}


void addData()
{

}