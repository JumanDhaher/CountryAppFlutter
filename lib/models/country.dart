import 'package:flutter/material.dart';

class Country{
  final String id;
  final String name;
  final String descreptions;
  final String image;
  bool isFav;

   Country({
    @required this.id,
    @required this.name,
    @required this.descreptions,
    @required this.image,
    this.isFav = false
  });
}