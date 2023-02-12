import 'dart:math';

import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  final int _maxChars = 8;
  final List<int> _numberic = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (oldValue.text.length >= newValue.text.length) {
      return newValue;
    }

    var dateText = _format(newValue.text, "/");
    return newValue.copyWith(
        text: dateText, selection: updateCursorPosition(dateText));
  }

  String _format(String value, String seperator) {
    value = value.replaceAll(seperator, '');
    var newString = '';

    for (int i = 0; i < min(value.length, _maxChars); i++) {
      if (int.tryParse(value[i]) != null) {
        newString += value[i];
      }
      if ((i == 1 || i == 3) && i != value.length - 1) {
        newString += seperator;
      }
    }

    return newString;
  }

  TextSelection updateCursorPosition(String text) {
    return TextSelection.fromPosition(TextPosition(offset: text.length));
  }
}
