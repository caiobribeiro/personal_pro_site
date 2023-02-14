import 'package:flutter_modular/flutter_modular.dart';
import 'package:personal_pro_site/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
      ];
}
