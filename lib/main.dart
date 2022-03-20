// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'widget_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.black45,
        canvasColor: Color.fromARGB(255, 54, 17, 15),
      ),
      home: WidgetTree(),
    );
  }
}