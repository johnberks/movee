import 'package:flutter/material.dart';

import 'package:movee/pages/pre-login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movee',
      debugShowCheckedModeBanner: false,
      home: PreLogin(),
    );
  }
}

