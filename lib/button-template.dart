library button_template;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTemplate extends StatelessWidget {
  final IconData icon;
  final Function action;
  final String text;

  const ButtonTemplate({
    Key key,
    this.icon,
    this.action,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: InkWell(
        onTap: action,
        child: Container(
          width: double.infinity,
          height: 30,
          child: Row(
            children: <Widget>[
              Icon(icon),
              SizedBox(width: 5),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSwitchButton({
  IconData icon,
  Function(bool) action,
  String title,
  String subtitle,
  bool value,
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Switch(value: value, onChanged: action),
  );
}
