import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final int maxLines;
  final String errorText;
  final int maxLength;
  final bool showLength;
  final bool withPadding;
  final void Function(String) onChanged;

  const MyTextFieldWidget({
    Key key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.maxLines = 1,
    this.errorText,
    this.maxLength,
    this.showLength = true,
    this.onChanged,
    this.withPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: withPadding
          ? EdgeInsets.symmetric(horizontal: 20, vertical: 13)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
        color: Colors.transparent,
      ),
      child: TextField(
        onChanged: onChanged,
        maxLength: maxLength,
        inputFormatters: inputFormatters,
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 20,
              color: Colors.black,
            ),
          ),
          hintText: hintText,
          errorText: errorText,
          counter: showLength ? null : Container(width: 0),
        ),
      ),
    );
  }
}
