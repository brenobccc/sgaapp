import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const MyTextFieldWidget(
      {Key key, this.hintText, this.controller, this.keyboardType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
        color: Colors.transparent,
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 20,
              color: Colors.black,
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
