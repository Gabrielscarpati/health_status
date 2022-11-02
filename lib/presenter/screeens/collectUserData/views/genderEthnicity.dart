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
    const List<String> list = <String>['Gender', 'Female'];
    const List<String> list2 = <String>['Ethnicity', 'Female'];

    String dropdownValue = list.first;

        final provider = context.read<LogInSignUpProvider>();
        double heightBetweenFields = 8.0;
        double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;
        return Container(
          height: 160,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),

                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                ),
                  ),
                ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8,left: 8),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),

                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
