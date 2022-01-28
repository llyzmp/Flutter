import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings)
        ],
        // 阴影高度
        elevation: 0.0,
        centerTitle: true
      ),
      body: const TextDemo()
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'FlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutter',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Color.fromARGB(0XFF, 0X00, 0XFF, 0X00)
          ),
          textAlign: TextAlign.right,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        RichText(
          text: const TextSpan(
            text: 'Hello',
            style: TextStyle(
              fontSize:40,
              color: Colors.blue
            ),

            children: [
              TextSpan(
              text: 'F1',
              style: TextStyle(
                fontSize:40,
                color: Colors.green
              )
            ),
          
          ]
        )
        )]
    );
  }
}