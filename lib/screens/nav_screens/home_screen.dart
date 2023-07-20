import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medi_app/providers/medical_team_provider.dart';
import 'package:medi_app/screens/nav_screens/medics.dart';
import 'package:medi_app/widgets/category_card.dart';
import '../../utils/app_styles.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var medics = Provider.of<MedicalTeamProvider>(context).medicList;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // appbar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello,', style: Styles.headlineStyle2),
                      const Gap(8),
                      Text('Dave Emery', style: Styles.headlineStyle1),
                    ],
                  ),

                  // profile picture
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Styles.deepPurpleShade,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const Gap(25),
            // card - how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Styles.deepPurpleShade,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    // animated pic
                    Container(
                      height: 100,
                      width: 100,
                      child:
                          Lottie.asset('assets/animations/animation_two.json'),
                    ),
                    Gap(20),
                    // text and get started button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: Styles.headlineStyle3,
                          ),
                          const Gap(12),
                          Text('Feel out your medical card right now',
                              style: Styles.headlineStyle4),
                          const Gap(12),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Styles.primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Styles.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(25),
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Styles.deepPurpleShade,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),

            const Gap(25),
            // horizontal listview for icons
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: medics
                    .map((medic) =>
                        CategoryCard(icon: medic.img, categoryName: medic.name))
                    .toList(),
              ),
            ),
            const Gap(25),
            // doctor list
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Doctor List', style: Styles.headlineStyle1),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MedicsScreen(),
                        ),
                      );
                    },
                    child: Text('See all', style: Styles.textStyle),
                  ),
                ],
              ),
            ),
            const Gap(25),
          ],
        ),
      ),
    );
  }
}
