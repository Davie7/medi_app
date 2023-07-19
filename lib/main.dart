// import 'package:flutter/material.dart';
// import 'package:medi_app/utils/app_styles.dart';
// import 'package:provider/provider.dart';
// import 'routes/routes.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(

//       child: Consumer<SharedPreferences>(
//         builder: (context, prefs, _) {
//           bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             theme: ThemeData(primaryColor: primary),
//             initialRoute: isLoggedIn
//                 ? RouteManager.loginPage
//                 : RouteManager.getStartedScreen,
//             onGenerateRoute: RouteManager.generateRoute,
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:medi_app/models/shared_preferences_provider.dart';
import 'package:medi_app/utils/app_styles.dart';
import 'package:provider/provider.dart';
import 'routes/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SharedPreferencesProvider>(
          create: (_) => SharedPreferencesProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPreferencesProvider>(
      builder: (context, prefsProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: primary),
          initialRoute: prefsProvider.isLoggedIn
              ? RouteManager.loginPage
              : RouteManager.getStartedScreen,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
