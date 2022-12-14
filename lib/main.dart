import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/SignUp/viewSignUp.dart';
import 'package:health_status/presenter/screeens/collectUserData/viewCollectUserData.dart';
import 'package:health_status/providers/LogInSignUpProvider.dart';
import 'package:health_status/providers/provider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';

void main() async {


  runApp(  MultiProvider(
    providers: [
      ChangeNotifierProvider( create: (context) => ProviderBase() ,),
      ChangeNotifierProvider( create: (context) => LogInSignUpProvider() ,),
/*
      ChangeNotifierProvider( create: (context) => CitieProvider() ,),
*/
    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],

      body: ViewCollectUserData(),
    );
  }
}


