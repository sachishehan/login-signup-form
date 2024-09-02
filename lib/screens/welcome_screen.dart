import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/signin_screen.dart';
import 'package:login/screens/singup_screen.dart';
import 'package:login/theme/theme.dart';
import 'package:login/widgets/welcome_button.dart';
import '../widgets/custom_scaffold.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
            child: Center(
                child: RichText(
            textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome Back!\n',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                      ),),
                    TextSpan(
                      text:
                      '\nEnter personal details to your employe account',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
            )),
          )),
          const Flexible(
            flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                  Expanded(
                      child: WelcomeButton(
                        buttonText: 'Sign in',
                        onTap: SignInScreen(),
                        color: Colors.transparent,
                        textColor: Colors.white,
                      ),
                  ),
                  Expanded(
                      child: WelcomeButton(
                        buttonText: 'Sign up',
                        onTap: SignUpScreen(),
                        color: Colors.white,
                        textColor: Colors.green,
                      ),
                  ),
                ],
              ),
          ),
          ),
        ],
      ),
    );
  }
}
