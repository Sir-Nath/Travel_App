import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/misc/colors.dart';
import '../cubit/app_cubit.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/responsive_button.dart';

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
  List text1 = [
    'Trips',
    'Fun',
    'Relaxation'
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: text1[index]),//'Trips'),
                      AppText(text: 'Mountain',size: 30,),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: AppText(
                          text: 'Mountain hikes give you an incredible sense of freedom along with endurance test',
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: (){
                          BlocProvider.of<AppCubits>(context).getData();
                        },
                        child: Container(
                        width: 200,
                          child: Row( children: [ResponsiveButton(width: 120)])
                        )
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots? 25: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index ==indexDots ? AppColors.mainColor: AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
      },),
    );
  }
}
