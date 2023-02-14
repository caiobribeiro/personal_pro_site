import 'package:flutter/material.dart';
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
        ],
      ),
      bottomNavigationBar: const ProBottomBar(),
    );
  }
}
