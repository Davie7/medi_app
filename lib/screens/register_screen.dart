import 'package:flutter/material.dart';
import '../routes/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Register'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.registerPage);
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
