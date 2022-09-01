import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String? text;
  const BigText({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColorDark),
    );
  }
}
