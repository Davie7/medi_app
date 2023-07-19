import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medi_app/utils/app_layout.dart';
import '../utils/app_styles.dart';

class CategoryCard extends StatelessWidget {

  final icon;
  final String categoryName;

  const CategoryCard({super.key, required this.icon, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Styles.deepPurpleShade,
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: AppLayout.getHeight(20),
            ),
            const Gap(10),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
