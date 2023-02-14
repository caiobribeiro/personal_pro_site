import 'package:flutter_modular/flutter_modular.dart';
import 'package:personal_pro_site/modules/curriculum/curriculum_page.dart';
import 'package:personal_pro_site/modules/dashboard/dashboard_page.dart';
import 'package:personal_pro_site/modules/home/home_page.dart';
import 'package:personal_pro_site/modules/projects/projects_page.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const DashboardPage(),
          children: [
            ChildRoute(
              '/curriculum',
              child: (context, args) => const CurriculumPage(),
              transition: TransitionType.rightToLeft,
            ),
            ChildRoute(
              '/home',
              child: (context, args) => const HomePage(),
              transition: TransitionType.fadeIn,
            ),
            ChildRoute(
              '/projects',
              child: (context, args) => const ProjectsPage(),
              transition: TransitionType.leftToRight,
            ),
          ],
        ),
      ];
}
