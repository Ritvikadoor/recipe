import 'dart:io';

import 'package:flutter/material.dart';

class ButtonSignin extends StatelessWidget {
  final String text;
  final Color color;
  final IconButton icon;
  final VoidCallback onPressed;
  const ButtonSignin(
      {Key? key,
      required this.text,
      required this.color,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: 300,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(backgroundColor: color, radius: 35, child: icon),
              const SizedBox(
                width: 50,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
