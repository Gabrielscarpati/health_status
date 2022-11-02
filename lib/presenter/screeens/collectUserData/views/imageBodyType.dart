import 'package:flutter/material.dart';
import 'package:health_status/providers/LogInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';


class ImageBodyType extends StatefulWidget {
  const ImageBodyType({Key? key}) : super(key: key);

  @override
  State<ImageBodyType> createState() => _ImageBodyType();
}

class _ImageBodyType extends State<ImageBodyType> {
  @override
  Widget build(BuildContext context) {

    final provider = context.read<LogInSignUpProvider>();
    double heightBetweenFields = 8.0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.red,
      height: 180,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: screenHeight*0.2,
                      width: screenWidth*.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/background.jpeg'),
                              fit: BoxFit.fill
                          )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
