import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(const WRRApp());

class WRRApp extends StatelessWidget {
  const WRRApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
