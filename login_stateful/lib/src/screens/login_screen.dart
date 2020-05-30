import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  createState() {
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20),
      child:Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            submitButtonField(),
          ],
        )
      ),
    );
  }
  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'name@example.com',
      ),
    );
  }
  Widget passwordField() {
    // return Container(
    //   margin: EdgeInsets.only(bottom: 20),
    //   child: TextFormField(
    //     obscureText: true,
    //     decoration: InputDecoration(
    //     labelText: 'Enter Password',
    //     hintText: 'Password',
    //     ),
    //   ),
    // );
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
  }
  Widget submitButtonField() {
    return RaisedButton(
      color: Colors.blue[400],
      
      child: Text('Submit'),
      onPressed: () {},
    );
  }
}