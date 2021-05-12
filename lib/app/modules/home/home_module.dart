import '../../app_module.dart';
import 'data/repositories_repository.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RepositoriesRepository,
        $HomeController,
        Bind((i) => RepositoriesRepository(AppModule.to.get<HasuraConnect>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
