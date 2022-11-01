import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ageMedicalConditions.dart';
import 'genderEthnicity.dart';

class CollectUserDataBody extends StatelessWidget {
  const CollectUserDataBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
              children:  [
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("USF Microbiome Center", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ), ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Medical Risk Calculator", style: TextStyle(
                          color: Colors.black,
                           fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ), ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(children: [
                    Row(children: const [
                      AgeMedicalConditions(),
                      SizedBox(
                        height: 4,
                      ),
                      GenderEthnicity(),
                    ],
                    ),
                  ],),
                ),
        ],
      ),
    );
  }
}
