import 'package:flutter/material.dart';
import 'package:personal_pro_site/modules/home/home_page.dart';

void main() {
  runApp(const ProWebSite());
}

class ProWebSite extends StatelessWidget {
  const ProWebSite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProWebSite',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
