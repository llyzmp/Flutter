void main() {
  // 声明变量
  var age = '18';
  print(age);

  // 指定数据类型的方式
  String name = '张三';
  print(name);

  // dynamic myname = '李四'
  dynamic myname = 20;
  myname = '1111';
  print(myname);

  // 变量的默认值
  var defaultName;
  print(defaultName);

  // 变量大小写敏感
  var Age = 90;
  print(Age);

  // 常量
  const a = 1;
  // a = 10;  // 常量一旦声明不能更改
  print(a);
}
