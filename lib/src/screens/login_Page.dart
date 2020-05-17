import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login'),
      ),
    );
  }
}
