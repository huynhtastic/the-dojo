import 'package:flutter/material.dart';

import 'screens/authentication/authentication.dart';
import 'screens/app/app.dart';

class AppAuthorization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Authentication(),);
  }
}
