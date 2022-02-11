import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column_Row'),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings)
        ],
        // 阴影高度
        elevation: 0.0,
        centerTitle: true
      ),
      body: const ColumnRowDemo()
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      width: double.infinity,
      child: Column(
        // 主轴的对齐方式
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // 交叉轴的对齐方式
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.access_alarm, size: 50),
          const Icon(Icons.access_alarms_outlined, size: 50),
          const Icon(Icons.accessibility_new_outlined, size: 50),
          const Icon(Icons.settings, size: 50),
          const Icon(Icons.ac_unit_rounded, size: 50),
          // Row 负责垂直方向的布局
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              Icon(Icons.access_alarm, size: 50),
              Icon(Icons.access_alarms_outlined, size: 50),
              Icon(Icons.accessibility_new_outlined, size: 50),
              Icon(Icons.settings, size: 50),
              Icon(Icons.ac_unit_rounded, size: 50),
            ],
          )
        ],
      ),
    );
  }
}
