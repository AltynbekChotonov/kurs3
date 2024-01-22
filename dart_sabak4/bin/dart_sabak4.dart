// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
  Olko kg = Olko(
      name: 'Kyrgyzstan',
      ayanty: 8757575758,
      kalky: 700000,
      shaarlar: ['bishkek', 'osh', 'jalal-abad'],
      egemenduubu: true,
      til: Til(
          name: 'Kyrgyz',
          San: 36,
          tamgalar: ['a', 'b'],
          sozdor: ['sen', 'men', 'al']));
  // kg.kalky = 700000;
  // kg.ayanty = 9080798986;
  // kg.egemenduubu = true;
  // kg.name = 'Kyrgyzstan';
  // kg.til = 'kyrgyz';
  print(kg.kalky);
  print(kg.ayanty);
  print(kg.egemenduubu);
  print(kg.name);
  print(kg.til.name);
  print(kg.til.San);
  print(kg.til.tamgalar);
  print(kg.til.sozdor);

  // String a = 'a';
}

class Olko {
  String name;
  double ayanty;
  Til til;
  int kalky;
  List shaarlar;
  bool egemenduubu;

  Olko({
    required this.name,
    required this.ayanty,
    required this.til,
    required this.kalky,
    required this.shaarlar,
    required this.egemenduubu,
  });
}

class Til {
  String name;
  int San;
  List tamgalar;
  List sozdor;
  Til({
    required this.name,
    required this.San,
    required this.tamgalar,
    required this.sozdor,
  });
}
// class ------------> object
//  class бул  жаны тушунукторду бериш учун колдонулат 
// () бул  жонокой каша болот бул функцияга иштейт
// {} бул тармал каша (ийри) каша десек болот бул бодиге иштейт
// [] бул чарчы каша бул листке иштейт






