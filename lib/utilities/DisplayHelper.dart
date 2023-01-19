import 'package:flutter/material.dart';

class DisplayHelper {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
