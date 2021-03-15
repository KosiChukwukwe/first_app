import 'package:first_app/Screens/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstPage());
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple
      )
    );
  }
}



