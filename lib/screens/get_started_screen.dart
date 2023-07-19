import 'package:flutter/material.dart';
import 'package:medi_app/services/login_or_register.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // get started animated pic
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: double.infinity,
                child: Lottie.asset('assets/animations/animation_one.json'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                right: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('All specialists in one app',
                      style: Styles.headlineStyle1),
                ],
              ),
            ),
            const Gap(25.0),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      'Find your doctor and make an \n appointment with one tap',
                      style: Styles.headlineStyle2),
                ],
              ),
            ),
            const Gap(20.0),
            Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                right: 25.0,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginOrRegister(),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: Styles.headlineStyle1.copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
