import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import '../providers/mainscreen_provider.dart';
import '../utils/app_styles.dart';
import 'bottom_navigation_widget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(builder: (context, value, child) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color:Styles.bgColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                  onTap: () {
                    value.pageIndex = 0;
                  },
                  icon: value.pageIndex == 0
                      ? MaterialCommunityIcons.home
                      : MaterialCommunityIcons.home_outline,
                ),
                BottomNavWidget(
                    onTap: () {
                      value.pageIndex = 1;
                    },
                    icon: value.pageIndex == 1
                        ? Ionicons.calendar
                        : Ionicons.calendar_outline),
                BottomNavWidget(
                  onTap: () {
                    value.pageIndex = 2;
                  },
                  icon: value.pageIndex == 2
                      ? Ionicons.videocam
                      : Ionicons.videocam_outline,
                ),
                BottomNavWidget(
                  onTap: () {
                    value.pageIndex = 3;
                  },
                  icon: value.pageIndex == 3
                      ? Ionicons.people
                      : Ionicons.people_outline,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
