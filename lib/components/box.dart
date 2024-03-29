import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final String image;
  const MyBox({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 105,
        height: 105,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 10, spreadRadius: 2)]),

        child: Image.asset(image, scale: 10,),
      ),
    );
  }
}
