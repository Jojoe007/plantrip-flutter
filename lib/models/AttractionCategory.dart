import 'package:flutter/material.dart';
import 'package:plantrip/models/Attraction.dart';

class AttractionCategory {
  final int id;
  final String title;
  final String logo;

  const AttractionCategory(
      {this.id = 1, this.title = "ร้านอาหาร", this.logo = ""});
}
