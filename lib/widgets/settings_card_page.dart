import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final IconData iconData;
  final String label;

  SettingsCard({
    this.iconData,
    this.label,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 32.0,
              backgroundColor: Colors.indigo,
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            Text(
              '$label',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
