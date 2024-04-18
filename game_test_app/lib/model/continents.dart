import 'package:flutter/material.dart';
import 'package:game_test_app/constants/app_text.dart';
import 'package:game_test_app/model/suroo.dart';

class Continent {
  const Continent({
    required this.name,
    required this.icon,
    required this.color,
    this.suroo,
  });

  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
}

final asia = Continent(
  name: AppText.asia,
  icon: 'asia',
  color: Color(0xffFE8D7D),
  suroo: asiaQuessions,
);

const europe = Continent(
  name: AppText.europe,
  icon: 'europe',
  color: Color(0xff7FA4FF),
);
const northAmerica = Continent(
  name: AppText.northAmerica,
  icon: 'north_america',
  color: Color(0xffFFAD01),
);
const southAmerica = Continent(
  name: AppText.southAmerica,
  icon: 'south_america',
  color: Color(0xffE7B1E5),
);
const africa = Continent(
  name: AppText.africa,
  icon: 'africa',
  color: Color(0xffFFE52c),
);
const australia = Continent(
  name: AppText.australia,
  icon: 'australia',
  color: Color(0xff60E280),
);

List<Continent> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
