import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserData/components/greyTextScreenCollectUserData.dart';
import 'package:health_status/providers/LogInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';

import '../../../components/sliderBarWidget.dart';
import '../components/buttonWithMarginScreenCollectUserData.dart';
import '../components/greenTextScreenCollectUserData.dart';


class BasicBiodata extends StatefulWidget {
  const BasicBiodata({Key? key}) : super(key: key);

  @override
  State<BasicBiodata> createState() => _BasicBiodata();
}

class _BasicBiodata extends State<BasicBiodata> {
  @override
  Widget build(BuildContext context) {

    final provider = context.read<LogInSignUpProvider>();
    double heightBetweenFields = 8.0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                        GreyTextScreenCollectUserData(text: "Basic Biodata"),
                        SizedBox(width: screenWidth*.28,),
                        Text("Values in centimeters"),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(children: [
                          GreenTextScreenCollectUserData(text: 'Chest Circunference',),
                          SizedBox(width: screenWidth*.142,),
                          BrightnessSliderContainer(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0',),
                        ],
                        ),
                      SizedBox(height: 8,),
                      Row(children: [
                        GreenTextScreenCollectUserData(text: 'waist Circunference',),
                        SizedBox(width: screenWidth*.149,),
                        BrightnessSliderContainer(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0',),
                      ],
                      ),
                      SizedBox(height: 8,),
                      Row(children: [
                        GreenTextScreenCollectUserData(text: 'Hip Size',),
                        SizedBox(width: screenWidth*.362,),
                        BrightnessSliderContainer(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0',),
                      ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GreenTextScreenCollectUserData(text: 'Hip Size',),
                          SizedBox(width: screenWidth*.05,),
                          Text("Values in centimeters"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GreenTextScreenCollectUserData(text: 'Hip Size',),
                          SizedBox(width: screenWidth*.05,),
                          Text("Values in centimeters"),
                        ],
                      ),
                    ],
                  ),

                ],),
              SizedBox(height: 12,),
              ButtonWithMarginScreenCollectUserData(
                text: 'Calculate BMI',
              ),
            ],
          )
        ),
      ),
    );
  }
}
