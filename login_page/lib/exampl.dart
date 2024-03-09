import 'model.dart';

/// <> generic
final students = <Student>[nursultan, gylzada, nazik, mursali, emir];

void main(List<String> arguments) {
  controlEmailPhone('0502688991', 'nazik.abdrahmanova.kk@gmail.com');
}

void controlEmailPhone(String phone, String email) {
  for (final student in students) {
    if (phone == student.phone && email == student.email) {
      print('kosh keldin${student.name}');
      break;
    } else {
      print('kechiresiz login je phone kata');
    }
  }
}
