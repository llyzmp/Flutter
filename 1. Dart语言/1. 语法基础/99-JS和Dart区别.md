# Js和Dart语言区别
[toc]
## 1.Symbol的区别
- 在js中，Symbol是将基础数据类型转换为唯一标识符，核心应用是可以将复杂引用数据类型转换为对象数据类型的键名
- 在Dart中，Symbol是不透明的动态字符串名称，用于反映库中的元数据，用Symbol可以获得或引用类的一个镜像，概念比较复杂，但和js用法基本一致，
```Dart
void main() {
  Map test = new Map();
  test[#t] = 'symbol test';
  print(test);
  print(test[#t]);
  print(test[Symbol('t')]);
  print(#t);
}

/**
{Symbol("t"): symbol test}
symbol test
symbol test
Symbol("t")

*/
```




## 3.undefined 和 null

