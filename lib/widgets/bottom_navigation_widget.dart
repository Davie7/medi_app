import 'package:flutter/material.dart';
import 'package:medi_app/utils/app_styles.dart';

class BottomNavWidget extends StatelessWidget {

  final void Function()? onTap;
  final IconData? icon;

  const BottomNavWidget({
    Key? key, this.onTap, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(icon, color: Styles.primaryColor,),
      ),
    );
  }
}
