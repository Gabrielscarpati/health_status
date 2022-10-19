import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class NameController extends StatelessWidget {
  final TextEditingController nameController;
  final String hint;
  final IconData iconData;
  NameController({Key? key, required this.nameController, required this.hint, required this.iconData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            validator: (emailController) {
              emailController == null ? 'Invalid Email' : null;
            },

            controller: nameController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
              suffixIcon: IconButton(
                icon: Icon(Icons.close),
                onPressed: () =>
                    nameController.clear(),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}

class EmailController extends StatelessWidget {
  final TextEditingController emailController;
  final String hint;
  final IconData iconData;
   EmailController({Key? key, required this.emailController, required this.hint, required this.iconData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            validator: (emailController) =>
            !EmailValidator.validate(
                emailController!)
                ? 'Invalid Email'
                : null,
            controller: emailController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
              suffixIcon: IconButton(
                icon: Icon(Icons.close),
                onPressed: () =>
                    emailController.clear(),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}


class PasswordController extends StatefulWidget {
  final TextEditingController passwordController;
  final String hint;
  final IconData iconData;
  PasswordController({Key? key, required this.passwordController, required this.hint, required this.iconData}) : super(key: key);

  @override
  State<PasswordController> createState() => _PasswordControllerState();
}

class _PasswordControllerState extends State<PasswordController> {
  bool passwordIsHidden = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            validator: (passwordController) {
              if (passwordController!.isEmpty ||
                  !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                      .hasMatch(passwordController)) {
                return "Your password must contain an uppercase and lowercase\nletter and a number and at least 8 characters";
              } else {
                return null;
              }
            },
            controller: widget.passwordController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hint,
              prefixIcon: Icon(widget.iconData),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    passwordIsHidden = !passwordIsHidden;
                  });
                },
                child: Icon(
                  passwordIsHidden
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}

class ConfirmPasswordController  extends StatefulWidget {
  final TextEditingController confirmPasswordController;
  final TextEditingController passwordController;
  final String hint;
  final IconData iconData;
  ConfirmPasswordController({Key? key, required this.passwordController, required this.hint, required this.iconData, required this.confirmPasswordController}) : super(key: key);

  @override
  State<ConfirmPasswordController> createState() => _ConfirmPasswordControllerState();
}

class _ConfirmPasswordControllerState extends State<ConfirmPasswordController> {

  bool passwordIsHiddenConfirmPassword = false;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            validator: (cofirmPasswordController) =>
            widget.confirmPasswordController.text != widget.passwordController.text
                ? 'The passwords need to match'
                : null,
            controller: widget.confirmPasswordController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hint,
              prefixIcon: Icon(widget.iconData),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    passwordIsHiddenConfirmPassword = !passwordIsHiddenConfirmPassword;
                  });
                },
                child: Icon(
                  passwordIsHiddenConfirmPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}








/*Widget inputField({required String hint, required IconData iconData}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
    child: SizedBox(
      height: 50,
      child: Material(
        elevation: 8,
        shadowColor: Colors.black87,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            prefixIcon: Icon(iconData),
          ),
        ),
      ),
    ),
  );
}
*/




