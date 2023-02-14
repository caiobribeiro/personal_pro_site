import 'package:flutter_modular/flutter_modular.dart';

import 'package:personal_pro_site/modules/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/dashboard', module: DashboardModule()),
      ];
}
