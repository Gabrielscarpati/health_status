import 'package:flutter/material.dart';
import 'package:health_status/providers/LogInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';
import '../../../components/loadingButton.dart';
import '../../LogIn/viewLogIn.dart';
import 'widgetsForSignUp.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);


  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<LogInSignUpProvider>();

    double heightBetweenFields = 8.0;
    double scrennWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],

      body: Center(
        child: Form(
          key: provider.formKeyAuthenticationSignUp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 500.0,
                height: 200.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.jpeg'),
                        fit: BoxFit.fitWidth
                    )
                ),
              ),
              const SizedBox(height: 30,),
              NameController(
                nameController: provider.nameController,
                hint: 'Name',
                iconData: Icons.person,

              ),

              SizedBox(height: heightBetweenFields ,),
              EmailController(
                hint: 'Email', iconData: Icons.person,
                emailController: provider.signUpPageEmailController,
              ),
              SizedBox(height: heightBetweenFields ,),

              PasswordController(
                hint: 'Password',
                iconData: Icons.person,
                passwordController: provider.signUpPagePasswordController,
              ),
              SizedBox(height: heightBetweenFields ,),

              ConfirmPasswordController(
                hint: 'Confirm Password',
                iconData: Icons.person,
                passwordController: provider.signUpPagePasswordController,
                confirmPasswordController: provider.signUpPageConfirmPasswordController,
              ),
              SizedBox(height: heightBetweenFields*3 ,),

              LoadingButton(
                buttonText: 'Sign Up',
                goNextScreen: () {
                provider.singUpUser(context,);
                provider.btnController.reset();

                },
                controller: provider.btnController,

              ),
              const Expanded(child: SizedBox()),
              Container(
                //color: Colors.green,
                height: 80,
                width: scrennWidth*0.8,
                decoration:  BoxDecoration(
                  color: Colors.green[800],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80)),
                ),
                child: GestureDetector(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Log In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue[400],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ViewLogIn()),
                            (route) => false
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
