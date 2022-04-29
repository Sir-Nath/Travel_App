import 'package:flutter/material.dart';
import '../widgets/app_large_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage> {
  //this is a list to allow for iteration for fetching images in an order
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //the page view builder allow for navigation from page to page
      body: PageView.builder(
        scrollDirection: Axis.vertical, // the page navigation scroll will be vertical
        itemCount: images.length, //the number of pages is the same number as the images we want to use
        itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/'+images[index]
                ),
                fit: BoxFit.cover
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      AppLargeText(text: 'Trips'),
                    ],
                  )
                ],
              ),
            ),
          );
      },)
    );
  }
}
