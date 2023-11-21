

import 'package:flutter/material.dart';
import 'package:login_app/Diet.dart';
import 'package:login_app/Exercise.dart';
import 'package:login_app/Meditation.dart';
import 'package:login_app/Splash.dart';
import 'package:login_app/Yoga.dart';
import 'package:login_app/dashboard.dart';
import 'package:login_app/login.dart';
import 'package:login_app/register.dart';
import 'package:login_app/QuestionnaireApp.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      "/" :(context)=>Splash(),
      "/login":(context)=>Login(),
      "/register":(context)=>Register(),
      "/questionnaire":(context)=>QuestionnaireApp(),
      "/dashboard":(context)=>Dashboard(),
      "/dietpage":(context)=>Diet(),
      "/meditationpage":(context)=>Meditation(),
      "/exercisepage":(context)=>Exercise(),
      "/yogapage":(context)=>Yoga()
    },
  ));
}
