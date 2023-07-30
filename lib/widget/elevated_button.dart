// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    this.color,
    required this.name,
    required this.text,
    this.horizontal,
    this.vertical,
  }) {}
  Color? color;
  String name;
  String text;
  double? horizontal;
  double? vertical;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: horizontal ?? 95, vertical: vertical ?? 12)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, name);
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
