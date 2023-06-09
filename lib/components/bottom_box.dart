import 'package:flutter/material.dart';

class BottomBox extends StatelessWidget {
  final String image;
  const BottomBox({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 105,
        height: 105,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),

        child: Image.asset(image, scale: 10,),
      ),
    );
  }
}