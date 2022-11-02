
import 'package:firebase_auth/firebase_auth.dart';

import '../../../ultil/auth/constants.dart';
import '../../../ultil/respostaProcessamento.dart';

class FirebaseManager{

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String> getUserCurrentID() async{
    return firebaseAuth.currentUser!.uid;
  }

/*  Future<User?> signUpUser (String email, String password) async {
    try {
      await loginUser(email, password);
      return userCredential.user;
    } on FirebaseAuthException catch(e){
      print(e);
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString()),backgroundColor: Colors.red));
    } catch (e){
      print(e);
    }
  }*/


  Future<RespostaProcessamento> signUpUser(context, {required String email, required String password}) async {

    RespostaProcessamento response = RespostaProcessamento.ok();
    ShowSnackBar snack = ShowSnackBar(context: context);
    //debugPrint("email:$email password:$password");
    UserCredential result = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

    //  debugPrint(result.data!.toJson().toString());

    if (result.user != null) {
      snack.showSnackBar(message: 'Sucesso!');

      snack.showSnackBar(message:"Por favor, verifique seu email");
      //Navigator.pushReplacementNamed(context, '/login', arguments: ScreenArguments("", "Por favor, verifique seu email", false));


    }else{

      snack.showSnackBar(message:"Por favor, verifique seu email");
      //Navigator.pushReplacementNamed(context, '/login', arguments: ScreenArguments("", "Por favor, verifique seu email", false));


    }

    return response;
  }



  Future<User?> loginUser (String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return null;
  }

  Future signOut() async {
    try {
      return await firebaseAuth.signOut();

    } catch(e){
      print(e.toString());
      return null;
    }
  }
}


