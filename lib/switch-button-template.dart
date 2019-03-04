library switch_button_template;

import 'package:flutter/material.dart';

class SwitchButtonTemplate extends StatelessWidget {
  final IconData icon;
  final Function(bool) action;
  final String title;
  final String subtitle;
  final bool value;

  const SwitchButtonTemplate({
    Key key,
    this.icon,
    this.action,
    this.title,
    this.subtitle,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(value: value, onChanged: action),
    );
  }
}
