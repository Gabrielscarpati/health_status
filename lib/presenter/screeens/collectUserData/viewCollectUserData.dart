import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserData/views/collectUserDataBody.dart';

class ViewCollectUserData extends StatelessWidget {
  const ViewCollectUserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          height: 910,
            child: Center(
              child: CollectUserDataBody(),
            )
      ),
    );
  }
}
