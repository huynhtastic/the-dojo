import 'package:flutter/material.dart';
import 'package:the_dojo/app_authorization.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppAuthorization(),
    );
  }
}

void main() => runApp(Main());
