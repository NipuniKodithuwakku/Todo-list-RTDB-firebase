import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'you@example.com',
        icon: Icon(Icons.email),
      ),
    );
  }

  passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'password',
        hintText: 'password',
        icon: Icon(Icons.lock),
      ),
    );
  }

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(),
            passwordField(),
            SizedBox(height: 10.0),
            submitButton(),
          ],
        ),
      ),
    );
  }

  submitButton() {
    return RaisedButton(
      onPressed: () {},
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      color: Colors.green,
    );
  }
}
