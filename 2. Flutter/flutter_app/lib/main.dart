import 'package:flutter/material.dart';

// import '01_basic/01_Hello.dart';
import '01_basic/02_Text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo', 
      home: Home(),
      debugShowCheckedModeBanner: false
    );
  }
}


