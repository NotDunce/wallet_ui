import 'package:flutter/material.dart';

import 'bottom_box.dart';

class LongBox extends StatelessWidget {
  final String image;
  final String text;
  final String title;

  const LongBox({super.key, required this.image, required this.text,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BottomBox(image: image),
                  Container(
                    width: 230,
                    height: 105,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Text(title, style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                ),
                                
                                Text(text, style: TextStyle(fontSize: 11),),
                              ],
                            ),
                          ],
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      
                    ],),
                    
                  )
                ],
              );
  }
}