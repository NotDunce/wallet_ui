import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/components/bottom_box.dart';
import 'package:wallet_ui/components/box.dart';
import 'package:wallet_ui/components/cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //controller for the cards

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(child: Icon(Icons.add)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(colour: Colors.lightBlue.shade400),
                    MyCard(colour: Colors.deepPurple.shade300),
                    MyCard(colour: Colors.red.shade300)
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyBox(image: 'lib/images/send-money.png'),
                      MyBox(
                        image: 'lib/images/money.png',
                      ),
                      MyBox(image: 'lib/images/bill.png'),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Send',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Pay',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold)),
                      Text('Bills',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BottomBox(image: 'lib/images/pie-chart.png'),
                  Container(
                    width: 230,
                    height: 105,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Text('Statistics', style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                ),
                                
                                Text('Payment and income'),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
