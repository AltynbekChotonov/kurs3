void main(List<String> args) {
  int resultat = EkigeKoboit(10);
  print('resultat $resultat');
  // torttyEkigeKoboit();
  // beshtiEkigeKoboit();
}

EkigeKoboit(int san) {
  int koboitulgonSan = san * 2;
  print('koboitulgonSan $koboitulgonSan');
  return koboitulgonSan;
}

void torttyEkigeKoboit() {
  int resultat = 4 * 2;
  print(resultat);
}

int beshtiEkigeKoboit() {
  int resultat = 5 * 2;
  print(resultat);
  return resultat;
}
