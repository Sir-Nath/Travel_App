import 'dart:ui';

import'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

import '../widgets/app_large_text.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/mountain.jpeg'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.menu,),
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.menu,),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: 'Yosemite', color: Colors.black.withOpacity(0.8),),
                        AppLargeText(text: '\$250', color: AppColors.mainColor,)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: AppColors.mainColor,),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(text: 'USA, California', color: AppColors.mainTextColor)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index) => Icon(Icons.star, color: gottenStars>index?AppColors.starColor: AppColors.textColor2,))
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(text: '(4.0)', color: AppColors.textColor2,)
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppLargeText(text: 'People',color: Colors.black.withOpacity(0.8),)
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
