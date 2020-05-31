import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {

  createState() {
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen> with ValidationMixin{

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
      validator: validateEmail,
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
      validator: validatePassword,
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