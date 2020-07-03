import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';

class MyTextFieldAnimalControllerWidget extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final int maxLines;
  final String errorText;
  final int maxLength;
  final bool showLength;
  final void Function(String) onChanged;

  const MyTextFieldAnimalControllerWidget({
    Key key,
    this.title,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.maxLines = 1,
    this.errorText,
    this.maxLength,
    this.showLength = true,
    this.onChanged,
  }) : super(key: key);

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
          onChanged: onChanged,
          showLength: showLength,
          maxLength: maxLength,
          errorText: errorText,
          maxLines: maxLines,
          controller: controller,
          hintText: hintText,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }
}
