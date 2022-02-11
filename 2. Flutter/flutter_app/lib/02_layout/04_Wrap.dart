import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings)
        ],
        // 阴影高度
        elevation: 0.0,
        centerTitle: true
      ),
      body: const WrapDemo()
    );
  }
}

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key? key}) : super(key: key);

  final List<String> _list = const [ '曹操', '司马懿', '曹植', '许褚', '曹洪', '曹仁' ];

  List<Widget> _weiGuo() {
    return _list.map((name) => Chip(
      avatar: const CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text('魏国'),
      ),
      label: Text(name),
    )).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: _weiGuo(), 
          spacing: 10.0, // 水平方向的间距
          runSpacing: 100, // 垂直方向的间距
          alignment: WrapAlignment.spaceAround, // 主轴方向的对齐方式
          // runALignment: WrapAlignment.spaceAround, // 交叉轴方向的对齐方式
        ),
        // Row内容溢出会警告，修改为Wrap就可以换行
        Wrap(
          children: const [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀国'),
              ),
              label: Text('刘备'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀国'),
              ),
              label: Text('张飞'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀国'),
              ),
              label: Text('关羽'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀国'),
              ),
              label: Text('赵云'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀国'),
              ),
              label: Text('诸葛亮'),
            ),
          ]
        )
      ]
    );
  }
}

class WrapAliment {
}