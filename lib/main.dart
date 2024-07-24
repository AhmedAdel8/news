import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/home.dart';
import 'package:news/screens/splash.dart';
import 'package:news/services/News_Service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
