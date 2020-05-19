import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Text('Ночной режим'),
          CupertinoSwitch(
            onChanged: (isActive) {

            },
            value: false,
          ),
        ],
      ),
    );
  }
}
