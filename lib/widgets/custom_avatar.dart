import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/avatar.jpeg'),
        ),
        CircleAvatar(
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 6.0,
          ),
          backgroundColor: Colors.white,
          radius: 8.0,
        )
      ],
    );
  }
}
