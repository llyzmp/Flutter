void main() {
  int a = 2;
  int b = 3;

  int smallNum = a < b ? a : b;
  print('$smallNum is smaller');

  String? name;
  String nameToPrint = name ?? 'xioabai';
  print(nameToPrint);
}
