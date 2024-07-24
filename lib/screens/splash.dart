import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:news/screens/home.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context as BuildContext,
          MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Center(
            child: Image.asset(
              'images/50.png',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            ' Top News',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color(0xff272162),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const CircularProgressIndicator(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
