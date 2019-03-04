library text_area_template;

import 'package:flutter/material.dart';

class TextAreaTemplate extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;
  final String hintText;

  const TextAreaTemplate({
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
        maxLines: null,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(icon),
        ),
      ),
    );
  }
}
