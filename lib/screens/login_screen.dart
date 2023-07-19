// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medi_app/utils/button.dart';
import 'package:medi_app/utils/plain_text_field.dart';
import 'package:provider/provider.dart';
import 'package:medi_app/providers/shared_preferences_provider.dart';
import 'package:medi_app/routes/routes.dart';
import 'package:medi_app/utils/app_styles.dart';
import 'package:medi_app/utils/text_field.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onTap;
  const LoginScreen({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void resetAppState(BuildContext context) async {
    SharedPreferencesProvider prefsProvider =
        context.read<SharedPreferencesProvider>();
    prefsProvider.setLoggedIn(false);
  }

  @override
  Widget build(BuildContext context) {
    final SharedPreferencesProvider prefsProvider =
        context.watch<SharedPreferencesProvider>();

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // welcome back message
                Text(
                  "Welcome back!\nWe are here for you.",
                  style: TextStyle(fontSize: 24, color: Styles.primaryColor),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  child: Lottie.asset('assets/animations/animation_one.json'),
                ),
                const SizedBox(
                  height: 25,
                ),
                // email textfield
                PlainTextField(
                  controller: emailController,
                  hintText: 'Enter your email',
                ),
                const SizedBox(
                  height: 10,
                ),
                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                ),
                const SizedBox(
                  height: 10,
                ),
                Button(
                  onTap: () {
                    // Set isLoggedIn to true
                    prefsProvider.setLoggedIn(true);
                    // Navigate to the home screen
                    Navigator.pushReplacementNamed(
                        context, RouteManager.homePage);
                  },
                  text: 'Login',
                ),
                const SizedBox(
                  height: 25,
                ),
                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Styles.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    resetAppState(context);
                    Navigator.pushReplacementNamed(
                        context, RouteManager.getStartedScreen);
                  },
                  child: const Text('Reset'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
