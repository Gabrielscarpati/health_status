import 'package:flutter/material.dart';
import 'package:health_status/providers/LogInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';
import '../../../components/loadingButton.dart';


class AgeMedicalConditions extends StatefulWidget {
  const AgeMedicalConditions({Key? key}) : super(key: key);


  @override
  State<AgeMedicalConditions> createState() => _AgeMedicalConditions();
}

class _AgeMedicalConditions extends State<AgeMedicalConditions> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<LogInSignUpProvider>();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.yellow,
      width: screenWidth*.6,
      height: 140,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("General Information", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold
                    ), ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const Expanded(child: SizedBox()),
          ],
        ),
        ),
      ),
    );
  }
}
