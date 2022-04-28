import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BornDateMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.length > 10 ||
        !RegExp(r'^([\d-\/]+)?$').hasMatch(
          newValue.text,
        )) {
      return oldValue;
    }
    var bornDate = newValue.text.replaceAll(
      RegExp(r'\D'),
      '',
    );
    final characters = bornDate.characters.toList();
    var formatted = '';
    for (var i = 0; i < characters.length; i++) {
      if (i < 2) {
        formatted += characters[i];
      } else if (i == 2) {
        formatted += '/';
        formatted += characters[i];
      } else if (i == 4) {
        formatted += '/';
        formatted += characters[i];
      } else {
        formatted += characters[i];
      }
    }
    return newValue.copyWith(
      text: formatted,
      selection: TextSelection.fromPosition(
        TextPosition(offset: formatted.length),
      ),
    );
  }
}
