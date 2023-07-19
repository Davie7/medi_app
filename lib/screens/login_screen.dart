// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:provider/provider.dart';
// import 'get_started_screen.dart';
// import 'home_screen.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

// // this function clears the state in this app
//   void resetAppState() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.remove('isLoggedIn');
//   }

//   @override
//   Widget build(BuildContext context) {
//     final SharedPreferences prefs = Provider.of<SharedPreferences>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Login Screen',
//               style: TextStyle(fontSize: 24),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Set isLoggedIn to true
//                 prefs.setBool('isLoggedIn', true);
//                 // Navigate to the home screen
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomeScreen(),
//                   ),
//                 );
//               },
//               child: Text('Login'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 resetAppState();
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => GetStartedScreen(),
//                   ),
//                 );
//               },
//               child: Text('Reset'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:medi_app/models/shared_preferences_provider.dart';
import 'package:medi_app/routes/routes.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Screen',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // Set isLoggedIn to true
                prefsProvider.setLoggedIn(true);
                // Navigate to the home screen
                Navigator.pushReplacementNamed(
                    context, RouteManager.homePage);
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                resetAppState(context);
                Navigator.pushReplacementNamed(
                    context, RouteManager.getStartedScreen);
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
