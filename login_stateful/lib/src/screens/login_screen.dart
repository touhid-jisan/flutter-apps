import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  createState() {
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20),
      child:Form(
        key: formKey,
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
      validator: (String value) {
        //return null if valid
        //string with the error msg if invalid
        if(!value.contains('@')) {
          return 'Please enter a valid email';
        }
      },
      onSaved: (String value) {
        print(value);
      },
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
      validator: (String value) {
        if(value.length < 7) {
          return ('Pasword  must be atleast 7 char');
        }
      },
      onSaved: (String value) {
        print(value);
      },
    );
  }
  Widget submitButtonField() {
    return RaisedButton(
      color: Colors.blue[400],
      child: Text('Submit'),
      onPressed: () {
        if(formKey.currentState.validate()) {
          formKey.currentState.save();
        };
      },
    );
  }
}