import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Flex'),
            leading: const Icon(Icons.menu),
            actions: const [
              Icon(Icons.settings)
            ],
            // 阴影高度
            elevation: 0.0,
            centerTitle: true
        ),
        body: const FlexDemo()
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 80,
              width: 80
            ),
            // 自动伸缩
            Expanded(
              child: Container(
                color: Colors.green,
                height: 80,
              )
            
            )
          ]
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // 声明水平方向的排列方式
          textDirection: TextDirection.rtl,
          children: const [
            Icon(Icons.access_alarm, size: 50),
            Icon(Icons.access_alarms_outlined, size: 50),
            Icon(Icons.accessibility_new_outlined, size: 50),
            Icon(Icons.settings, size: 50),
            Icon(Icons.ac_unit_rounded, size: 50),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: Container(
                color: Colors.teal,
                height: 50,
                // width: 50,
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 50,
                // width: 50,
              ),
              flex: 2,
            )
          ]
        ),
        Container(
          height: 150,
          margin: const EdgeInsets.all(20),
          child: Flex(
            direction: Axis.vertical,
            // 垂直方向排列顺序
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                child: Container(
                  color: Colors.teal,
                  height: 50,
                  // width: 50,
                ),
                flex: 1,
              ),
              //  空格站位器
              const Spacer(
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                  height: 50,
                  // width: 50,
                ),
                flex: 2,
              )
            ]
          ),
        )
      ]
    );
  }
}
