import 'package:flutter/material.dart';
import 'package:the_dojo/theme.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  @override
  final Size preferredSize;

  AuthAppBar({@required this.title}) : preferredSize = Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      backgroundColor: appBarBg,
    );
  }
}
