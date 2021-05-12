import 'package:hasura_connect/hasura_connect.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:unitodo/app/app_widget.dart';
import 'package:unitodo/app/modules/home/home_module.dart';

import 'modules/add/add_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind(
          (i) => HasuraConnect("https://todo-todo.hasura.app/v1/graphql"),
        ),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter("/addPage", module: AddModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
