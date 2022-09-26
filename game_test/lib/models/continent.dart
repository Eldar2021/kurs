import 'package:flutter/material.dart';
import 'package:game_test/constants/app_text.dart';

class Continent {
  const Continent({
    required this.name,
    required this.icon,
    required this.color,
  });

  final String name;
  final String icon;
  final Color color;
}

const asia = Continent(
  name: AppText.asia,
  icon: 'asia',
  color: Color(0xffFE8180),
);
const europe = Continent(
  name: AppText.europe,
  icon: 'europe',
  color: Color(0xff81A2FD),
);
const nAmerica = Continent(
  name: AppText.northAmerica,
  icon: 'north_america',
  color: Color(0xffFEB000),
);
const sAmerica = Continent(
  name: AppText.southAmerica,
  icon: 'south_america',
  color: Color(0xffE5A9E4),
);
const africa = Continent(
  name: AppText.africa,
  icon: 'africa',
  color: Color(0xffFEEF34),
);
const australia = Continent(
  name: AppText.australia,
  icon: 'australia',
  color: Color(0xff6BF782),
);

List<Continent> continents = [
  europe,
  asia,
  nAmerica,
  sAmerica,
  africa,
  australia,
];
