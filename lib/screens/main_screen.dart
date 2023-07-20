import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/mainscreen_provider.dart';
import '../utils/app_styles.dart';
import '../widgets/bottom_navigation_bar.dart';
import 'nav_screens/appointment_screen.dart';
import 'nav_screens/home_screen.dart';
import 'nav_screens/medics.dart';
import 'nav_screens/vid_conference_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    HomeScreen(),
    AppointmentScreen(),
    VidConferencingScreen(),
    MedicsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Styles.bgColor,
          body: pageList[value.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
