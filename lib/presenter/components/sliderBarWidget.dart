import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrightnessSliderContainer extends StatefulWidget {
  final double maxValue;
  final String textMaxValue;
  final double minValue;
  final String textMinValue;

  const BrightnessSliderContainer({Key? key, required this.maxValue, required this.minValue, required this.textMaxValue, required this.textMinValue}) : super(key: key);

  @override
  _BrightnessSliderContainerState createState() => _BrightnessSliderContainerState();
}

class _BrightnessSliderContainerState extends State<BrightnessSliderContainer> {
  @override
  double brightness = 10.0;
  double _currentSliderValue = 1;

  Widget build(BuildContext context) {

    return  Stack(
      children: [
        Container(
          width: 150,
          height: 18,
          child: Slider(
            inactiveColor: Colors.grey,
            activeColor: Colors.orangeAccent,
            value: _currentSliderValue,
            max: widget.maxValue,
            min: widget.minValue,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ),
        Text(widget.textMinValue),
        Row(
          children: [
            SizedBox(width: 140,),
           Text(widget.textMaxValue),
          ],
        ),
      ],
    );
  }
}
