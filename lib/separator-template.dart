library separator_template;

import 'package:flutter/material.dart';

class SeparatorTemplate extends StatelessWidget {
  final String text;

  const SeparatorTemplate({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor.withOpacity(0.4),
      padding: EdgeInsets.all(10),
      child: Text(text),
    );
  }
}
