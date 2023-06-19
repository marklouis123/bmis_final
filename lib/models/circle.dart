import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink,
        ),
      ),
    );
  }
}
