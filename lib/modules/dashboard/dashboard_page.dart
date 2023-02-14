import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:personalism/personalism.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: const RouterOutlet(),
      bottomNavigationBar: ProBottomBar(
        onIndexSelected: (selectedPage) => {
          _currentIndex = selectedPage,
          if (_currentIndex == 0)
            {
              Navigator.of(context).pushNamed('/dashboard/projects'),
            }
          else if (_currentIndex == 1)
            {
              Navigator.of(context).pushNamed('/dashboard/home'),
            }
          else if (_currentIndex == 2)
            {
              Navigator.of(context).pushNamed('/dashboard/curriculum'),
            }
        },
      ),
    );
  }
}
