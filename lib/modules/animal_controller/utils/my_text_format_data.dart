import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextInputFormatterData extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    if (newText.length > 2) {
      var list = newText.split('');
      list.insert(2, '/');
      newText = list.reduce((value, element) => value + element);
    }

    if (newText.length > 5) {
      var list = newText.split('');
      list.insert(5, '/');
      newText = list.reduce((value, element) => value + element);
    }
    return TextEditingValue(
      text: newText,
      selection: TextSelection(
        baseOffset: newText.length,
        extentOffset: newText.length,
      ),
    );
  }
}
