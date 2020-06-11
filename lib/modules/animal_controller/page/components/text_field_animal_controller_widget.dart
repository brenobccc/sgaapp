import 'package:flutter/material.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';

class MyTextFieldAnimalControllerWidget extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const MyTextFieldAnimalControllerWidget(
      {Key key, this.title, this.controller, this.hintText, this.keyboardType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, bottom: 2),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        MyTextFieldWidget(
          controller: controller,
          hintText: hintText,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
