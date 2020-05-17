import 'package:flutter/material.dart';
import './screens/login_Page.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todo list'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              'Login',
            ),
          ),
        ));
  }
}
