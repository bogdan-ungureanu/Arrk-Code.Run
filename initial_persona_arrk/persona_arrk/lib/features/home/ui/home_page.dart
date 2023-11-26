import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:persona_arrk/constants/colors.dart';
import 'package:persona_arrk/constants/styles.dart';
import 'package:persona_arrk/utils/widgets/custom_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        getTitleWidgets(),
        addVerticalSpace(24),
        getCarAlertWidgets(screenWidth, screenHeight/3.5),
        addVerticalSpace(24),
        getBatteryInfoWidgets(screenWidth / 3),
        addVerticalSpace(24),
        getAdditionalWidgets(),
        addVerticalSpace(24),
        getFavoritesWidgets(screenWidth, screenHeight)
      ],
    );
    return Container();
  }



  getCarAlertWidgets(double screenWidth, double screenHeight)
  {
    return Column(
      children: [
        Container(color: kYellowColor, height: screenHeight, width: screenWidth,)
      ],
    );
  }


  Widget getTitleWidgets()
  {
    return Column(
      children: [
        addVerticalSpace(24),
        const Icon(Icons.energy_savings_leaf_outlined, color: kGreenColor, size: 32),
        addVerticalSpace(4),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello", style: kMediumWhiteTextStyle,),
            Text("Bogdan", style: kMediumGreenTextStyle,)
          ]
        )
      ],
    );
  }

  getBatteryInfoWidgets(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(color: kYellowColor, height: 60, width: width,),
        Container(padding: kSmallPaddingAll, decoration: kCircleBoxDecoration,
        child: const Icon(Icons.electric_bolt_outlined, color: kWhiteColor, size: 32,),)
      ],
    );
  }

  getAdditionalWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(Icons.view_headline, color: kWhiteColor, size: 32,),
        ),
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(Icons.lock_open, color: kWhiteColor, size: 32,),
        ),
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(Icons.alarm_add_outlined, color: kWhiteColor, size: 32,),
        ),
        Container(
          padding: kSmallPaddingAll,
          decoration: kCircleBoxDecoration,
          child: const Icon(Icons.location_city, color: kWhiteColor, size: 32,),
        )
      ],
    );
  }

  getFavoritesWidgets(double screenWidth, double screenHeight) {
    return Column(
      children: [
        const Text("Your favourites", style: kMediumGreenTextStyle),
        addVerticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: kWhiteColor,
              height: screenHeight / 5,
              width: screenWidth / 2.5,),
            Container(
              color: kWhiteColor,
              height: screenHeight / 5,
              width: screenWidth / 2.5,),
          ],
        )
      ]
    );

  }

}