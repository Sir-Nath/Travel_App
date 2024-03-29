
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width = 120
    , this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true? MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
          children: [
            isResponsive == true ? Container(
                margin: const EdgeInsets.only(left: 20),
                child: AppText(text: 'Book your trip', color: Colors.white)): Container(),
            Image.asset('images/button-one.png'),
          ],
        ),
      ),
    );
  }
}
