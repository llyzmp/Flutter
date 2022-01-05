void main() {
  //声明整数
  int count = 3;
  print(count);

  //声明浮点数
  double price = 3.8;
  print(price);

  // 声明数值类型
  num n = 3.6;
  print(n);

  // 类型转换
  print(n.toString());
  print(n.toInt());

  // 四舍五入
  print(3.1415926.round());
  print(3.1415926.toStringAsFixed(5));

  // 返回余数
  print(10.remainder(3));

  // 数字比较： 0：相同， 1：大于， -1：小于
  print(10.compareTo(11));

  // 返回最大公约数
  print(12.gcd(18));

  // 科学计数法
  print(10000.toStringAsExponential(2));
}
