import 'package:flutter/material.dart';
import './src/app.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Todo list with firebase RTDB',
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  );
}
