import 'package:flutter/material.dart';
import 'package:prueba_json/user_local_page.dart';

void main() => runApp(MyApp());

@override
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(),
      home: UserLocalPage(),
    );
  }
}
