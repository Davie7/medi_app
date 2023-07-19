import 'package:flutter/material.dart';
import 'package:medi_app/providers/medical_team_provider.dart';
import 'package:medi_app/providers/shared_preferences_provider.dart';
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
        ChangeNotifierProvider<MedicalTeamProvider>(
          create: (_) => MedicalTeamProvider(),
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
