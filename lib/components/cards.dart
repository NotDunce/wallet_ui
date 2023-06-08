import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color colour;
  const MyCard({super.key, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 500,
        height: 200,
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20)),
        child:  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 40,
            ),
            Text('Balance',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18)),
            SizedBox(
              height: 15,
            ),
            Text(
              '\$5,250.20',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '**** 3456',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  '9/24',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
