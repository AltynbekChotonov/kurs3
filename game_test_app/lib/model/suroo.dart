// ignore_for_file: public_member_api_docs, sort_constructors_first
class Suroo {
  Suroo({
    required this.text,
    required this.jooptor,
    required this.image,
  });
  final String text;
  final List<Joop> jooptor;
  final String image;
}

class Joop {
  Joop({
    required this.text,
    this.istrue = false,
  });
  final String text;
  final bool istrue;
}

List<Suroo> asiaQuessions = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];

final s1 = Suroo(
    text: 'Bishkek',
    jooptor: [
      Joop(text: 'Kyrgyzstan', istrue: true),
      Joop(text: 'Koreya'),
      Joop(text: 'Afganiztan'),
      Joop(text: 'Turkmenistan'),
    ],
    image: 'bishkek');

final s2 = Suroo(
    text: 'Astana',
    jooptor: [
      Joop(text: 'Kazakhstan', istrue: true),
      Joop(text: 'Japon'),
      Joop(text: 'Russia'),
      Joop(text: 'Turkmenistan'),
    ],
    image: 'astana');

final s3 = Suroo(
    text: 'Ashhabad',
    jooptor: [
      Joop(
        text: 'Kyrgyzstan',
      ),
      Joop(text: 'Singapur'),
      Joop(text: 'Tajikstan'),
      Joop(text: 'Turkmenistan', istrue: true),
    ],
    image: 'ashhabad');

final s4 = Suroo(
    text: 'Dushanbe',
    jooptor: [
      Joop(
        text: 'Kyrgyzstan',
      ),
      Joop(text: 'Koreya'),
      Joop(text: 'Afganiztan'),
      Joop(text: 'Tajikstan', istrue: true),
    ],
    image: 'dushanbe');

final s5 = Suroo(
    text: 'New-delhi',
    jooptor: [
      Joop(text: 'Iran'),
      Joop(text: 'Pakistan'),
      Joop(text: 'India', istrue: true),
      Joop(text: 'Indonezia'),
    ],
    image: 'new-delhi');

final s6 = Suroo(
    text: 'Pekin',
    jooptor: [
      Joop(text: 'China', istrue: true),
      Joop(text: 'Koreya'),
      Joop(text: 'Uzbekstan'),
      Joop(text: 'Taiwan'),
    ],
    image: 'pekin');

final s7 = Suroo(
    text: 'Seul',
    jooptor: [
      Joop(text: 'Tailand'),
      Joop(text: 'Koreya', istrue: true),
      Joop(text: 'China'),
      Joop(text: 'Vetnam'),
    ],
    image: 'seul');

final s8 = Suroo(
    text: 'Tashkent',
    jooptor: [
      Joop(text: 'Kyrgyzstan'),
      Joop(text: 'Tajikstan'),
      Joop(text: 'Azerbaijan'),
      Joop(text: 'Uzbekstan', istrue: true),
    ],
    image: 'tashkent');

final s9 = Suroo(
    text: 'Tokyo',
    jooptor: [
      Joop(text: 'Japonya', istrue: true),
      Joop(text: 'Koreya'),
      Joop(text: 'Kongo'),
      Joop(text: 'Singapur'),
    ],
    image: 'tokyo');

final s10 = Suroo(
    text: 'Ulan_bator',
    jooptor: [
      Joop(text: 'Mongolya', istrue: true),
      Joop(text: 'Nepal'),
      Joop(text: 'Fransia'),
      Joop(text: 'Burundi'),
    ],
    image: 'ulan_bator');
