import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personalism/personalism.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProCustomButton(
            buttonLeftIcon: Icons.arrow_back_ios_new,
            buttonLabel: 'Projects',
            buttonRightIcon: Icons.terminal,
            buttonFunction: () {},
          ),
          ProCustomButton(
            buttonLeftIcon: Icons.description,
            buttonLabel: 'Curriculum',
            buttonRightIcon: Icons.arrow_forward_ios,
            buttonFunction: () {},
          ),
          ProCustomButtonLinks(
            buttonLeftIcon: SvgPicture.asset(
              'assets/images/icons/github.svg',
              height: 40,
              width: 40,
            ),
            buttonLeftLink: 'asdfg',
            buttonMiddleIcon: SvgPicture.asset(
              'assets/images/icons/linkedin.svg',
              height: 40,
              width: 40,
            ),
            buttonMiddletLink: 'dfsadf',
            buttonRightIcon: SvgPicture.asset(
              'assets/images/icons/kaggle.svg',
              height: 40,
              width: 40,
            ),
            buttonRightLink: 'buttonRightLink',
          )
        ],
      ),
      bottomNavigationBar: const ProBottomBar(),
    );
  }
}
