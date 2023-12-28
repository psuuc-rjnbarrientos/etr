import 'package:flutter/material.dart';

class Continent {
  const Continent({
    required this.id,
    required this.name,
    required this.color,
    this.img,
  });

  final String? img;
  final int id;
  final String name;
  final Color color;
}
