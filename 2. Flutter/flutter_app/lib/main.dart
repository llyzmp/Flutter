import 'package:flutter/material.dart';

// import '01_basic/01_Hello.dart';
// import '01_basic/02_Text.dart';
// import '02_layout/01_Container.dart';
// import '02_layout/02_Column_Row.dart';
// import '02_layout/03_Flex.dart';
import '02_layout/04_Wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', 
      home: const Home(),
      // 全局设置字体
      theme: ThemeData(fontFamily: 'SourceSansPro'),
      debugShowCheckedModeBanner: false
    );
  }
}


