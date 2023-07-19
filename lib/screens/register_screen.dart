import 'package:flutter/material.dart';
import 'package:medi_app/utils/app_styles.dart';
import 'package:medi_app/utils/button.dart';
import 'package:medi_app/utils/plain_text_field.dart';
import 'package:medi_app/utils/text_field.dart';
import 'package:lottie/lottie.dart';


class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;
  const RegisterScreen({super.key, required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  // logo
                  Container(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  child: Lottie.asset('assets/animations/animation_one.json'),
                ),
                  const SizedBox(
                    height: 25,
                  ),
                  // create account message
                  Text(
                    "Let's create an account for you",
                    style: TextStyle(
                      fontSize: 16,
                      color: Styles.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // email textfield
                  PlainTextField(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // confirm password textfield
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Password',
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  // sign in button
                  Button(
                    text: 'Sign Up',
                    onTap: (){},
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // Already a member? Login now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already a member?'),
                     const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Login now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Styles.primaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
