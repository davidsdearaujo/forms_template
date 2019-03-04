library text_field_template;

import 'package:flutter/material.dart';

class TextFieldTemplate extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;
  final String hintText;

  const TextFieldTemplate({
    Key key,
    this.icon,
    this.controller,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(icon),
        ),
      ),
    );
  }
}
