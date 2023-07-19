import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/mainscreen_provider.dart';
import '../utils/app_styles.dart';
import '../widgets/bottom_navigation_bar.dart';
import 'chat_screen.dart';
import 'home_screen.dart';
import 'menu_screen.dart';
import 'notification_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    HomeScreen(),
    ChatScreen(),
    NotificationScreen(),
    MenuScreen(),
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
