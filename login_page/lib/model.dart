class Student {
  final int id;
  final String name;
  final String lastName;
  final String email;
  final int? gender;
  final String? jeri;
  String phone;
  int group;
  int? age;
  String? address;
  bool? marriage;

  Student({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    this.gender,
    this.jeri,
    required this.group,
    required this.phone,
    this.age,
    required this.address,
    required this.marriage,
  });
}

final nursultan = Student(
  id: 1,
  name: 'Нурсултан',
  lastName: 'Үсөн уулу',
  email: 'alixamzakg@gmail.com',
  group: 3,
  phone: '+79919021862',
  address: 'Moscow',
  marriage: true,
  jeri: 'Ош',
);

final gylzada = Student(
  id: 2,
  name: 'Гүлзада',
  lastName: 'Аманкул кызы',
  email: 'gulzada.amankulova91@gmail.com',
  group: 3,
  phone: '0505969685',
  address: 'Бишкек',
  marriage: true,
  jeri: 'Ысык-Көл',
);

final nazik = Student(
  id: 3,
  name: 'Назик ',
  lastName: 'Торобековна',
  email: 'nazik.abdrahmanova.kk@gmail.com',
  group: 3,
  phone: '0502688991',
  address: 'Бишкек',
  marriage: true,
  jeri: 'Бишкек',
);

final mursali = Student(
  id: 4,
  name: 'Мурсали ',
  lastName: 'Мамасыдыков',
  email: 'mursali648@gmail.com',
  group: 3,
  phone: '±79254908180',
  address: 'Moscow',
  marriage: true,
  jeri: 'Osh',
);

final emir = Student(
  id: 5,
  name: 'Emir ',
  lastName: 'Абдылда уулу',
  email: 'abdyldauuluruslanbek@gmail.com',
  group: 3,
  phone: '+79262176606',
  address: 'Osh',
  marriage: false,
  jeri: 'Osh',
);
