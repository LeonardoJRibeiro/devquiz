import 'package:DevQuiz/core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SplashPage extends StatelessWidget {
  void _loginWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount googleUser = (await GoogleSignIn().signIn())!;
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e);
      print('Failed to sign in with Google: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Stack(
          children: [
            Center(
              child: Image.asset(AppImages.logo),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 48,
                    child: Center(
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () => _loginWithGoogle(context),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
