import 'package:hasura_connect/hasura_connect.dart';
import 'package:unitodo/app/modules/add/data/add_repositories.dart';

import '../../app_module.dart';
import 'add_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'add_page.dart';

class AddModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $AddController,
        $AddRepositories,
        Bind((i) => AddRepositories(AppModule.to.get<HasuraConnect>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => AddPage()),
      ];

  static Inject get to => Inject<AddModule>.of();
}
