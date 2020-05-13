import 'package:flutter/material.dart';
import 'package:the_dojo/screens/authentication/constants/form_input_decoration.dart';
import 'package:the_dojo/screens/authentication/widgets/auth_app_bar.dart';
import 'package:the_dojo/theme.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AuthAppBar(title: 'The Dojo'),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: formInputDecoration.copyWith(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: formInputDecoration.copyWith(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 40),
              MaterialButton(
                height: 50.0,
                minWidth: 200.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: mainColor,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
