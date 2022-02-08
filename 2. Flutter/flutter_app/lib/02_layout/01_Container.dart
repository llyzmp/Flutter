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
      body: const ContainerDemo()
    );
  }
}
class ContainerDemo extends StatelessWidget {
  const ContainerDemo ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (
        const Text(
          'FlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutterFlutter',
          style: TextStyle(
            fontSize: 40
          )
        )
      ),
      width: 200,
      height: 500,
      // 无限宽高
      // width: double.infinity,
      // height: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 5.0),
      // 修饰，BoxDecoration(边框、圆角、渐变、阴影、背景色、背景图片)
      decoration: BoxDecoration(
        // 设置边框
        // border: Border(
        //   top: BorderSide(
        //     width: 10.0,
        //     color: Colors.red
        //   ),
        //   right: BorderSide(
        //       width: 10.0,
        //       color: Colors.red
        //   ),
        //   bottom: BorderSide(
        //       width: 10.0,
        //       color: Colors.red
        //   ),
        //   left: BorderSide(
        //       width: 10.0,
        //       color: Colors.red
        //   )
        // ),
        border: Border.all(
          width: 10.0,
          color: Colors.blue
        ),
        // 设置圆角
        // borderRadius: BorderRadius.all(Radius.circular(30))
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30)
        ),
        //  设置背景色
        color: Colors.lightGreen[100],
        // 设置渐变
        gradient: const LinearGradient(
          colors: [
            Colors.lightBlue,
            Colors.white12
          ]
        )
      ),
      //  设置排序
      alignment: Alignment.center,
      //  设置transform   Matrix4矩阵组件
      // transform: Matrix4.translationValues(100, 0, 0),
      // 沿着Z轴顺时针旋转
      // transform: Matrix4.rotationZ(0.1),
      // 斜切
      transform: Matrix4.skewX(0.1),

    );
  }
}