void main(List<String> arguments) {
  salamBer();
  koshtosh();
}

// async
// await

void salamBer() async {
  await Future.delayed(Duration(seconds: 10));
  print('Салам');
}

void koshtosh() {
  print('коштош');
}
