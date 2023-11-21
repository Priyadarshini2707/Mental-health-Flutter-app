import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }
  startTimer(){
    var duration=Duration(seconds: 10);
    return Timer(duration,route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.pinkAccent,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logo.jpg"),
          SizedBox(height: 20),
          Text(
            "Inner Weather",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              decoration: TextDecoration.none,

            ),
          ),
        ],
      ),
    );
  }
}
