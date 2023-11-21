import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:content(),
    );
  }
  Widget content(){
    return Column(
      children: [
      Container(
      height:250,
      width:double.infinity,
      color:Colors.pinkAccent,
      child:Column(
          children:[
            Padding(
                padding: const EdgeInsets.only(top:20.0),
              child: Image.asset("assets/logo.jpg"),
        ),

        Text("Register",
        style: TextStyle(fontSize: 30),)]
      ),
    ),
        SizedBox(
          height:40,
        ),
        inputStyle("Name","kavya"),
        inputStyle("Username", "test@gmail.com"),
        inputStyle("Password","abcde"),
        inputStyle("Confirm Password","abcde"),
        inputStyle("Mobile Number","xxxxx"),
        SizedBox(
          height:30,
        ),
        Container(
            height:60,
            width:300,
            decoration:BoxDecoration(color:Colors.pinkAccent,borderRadius: BorderRadius.circular(20)),

            child:TextButton(onPressed:(){
              Navigator.of(context).pop();
            },
              child:Text("Register",
                style: TextStyle(fontSize: 20,color: Colors.black),
              ),
            )
        ),

      ],
    );
  }
}
