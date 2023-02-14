import 'package:flutter/material.dart';
import 'package:personal_pro_site/modules/home/home_page.dart';

void main() {
  runApp(const ProWebSite());
}

class ProWebSite extends StatelessWidget {
  const ProWebSite({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ProWebSite',
      home: HomePage(),
    );
  }
}
