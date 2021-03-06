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
      validator: (String value) {
        if (value.contains('@')) {
          return null;
        } else {
          return 'Please enter a valid email';
        }
      },
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
      validator: (String value) {
        if (value.length > 4) {
          return null;
        } else {
          return 'password must be at least 4 characters';
        }
      },
    );
  }

  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              emailField(),
              passwordField(),
              SizedBox(height: 10.0),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  submitButton() {
    return RaisedButton(
      onPressed: () {
        print(formKey.currentState.validate());
      },
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
