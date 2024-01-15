void main(List<String> arguments) {
  Mamleket Kyrgyzstan = Mamleket();
  print(Kyrgyzstan.kalky);

  print('kours3'.runtimeType);
  print(12.runtimeType);
  print(12.55.runtimeType);
  print(true.runtimeType);

  String tandalganString = ('kours3');

  Function ekiFunksia = () {
    print('salam kours 3');
  };

  ekiFunksia.call();

  birFunksia();
}

birFunksia() {
  print('birFunksia barabarsyz');
}

class Mamleket {
  int kalky = 70000000;
}
