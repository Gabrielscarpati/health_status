import 'package:flutter/material.dart';
import 'package:health_status/providers/LogInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';


class GenderEthnicity extends StatefulWidget {
  const GenderEthnicity({Key? key}) : super(key: key);


  @override
  State<GenderEthnicity> createState() => _GenderEthnicity();
}

class _GenderEthnicity extends State<GenderEthnicity> {
  @override
  Widget build(BuildContext context) {

    final provider = context.read<LogInSignUpProvider>();
    double heightBetweenFields = 8.0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.red,
      height: 140,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            children: [
              TextButton(onPressed: (){
              },
                child: const Text("Gender"),
              ),
              TextButton(onPressed: (){
              },
                child: const Text("Ethnicity"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
