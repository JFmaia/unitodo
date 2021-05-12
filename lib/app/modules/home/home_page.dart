import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:unitodo/app/modules/home/home_module.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "UniTodo"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  HomeController homeController = HomeModule.to.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: SafeArea(
        child: Observer(
          builder: (BuildContext context) {
            return homeController.listaDeTarefas.isEmpty
                ? LayoutBuilder(
                    builder: (context, constraints) {
                      return Center(
                        child: Container(
                          height: constraints.maxHeight * 0.4,
                          child: Image.asset(
                            'lib/app/assets/images/002-unicorn.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  )
                : ListView.builder(
                    itemCount: homeController.listaDeTarefas.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 5,
                        child: ListTile(
                          title: Text(
                            homeController.listaDeTarefas[index].descricao,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            homeController.listaDeTarefas[index].createdAt
                                .toIso8601String(),
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                          leading: IconButton(
                            color: Theme.of(context).primaryColor,
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              homeController.setId(
                                  homeController.listaDeTarefas[index].id);
                              homeController.deleteTarefa();
                            },
                          ),
                          trailing: Checkbox(
                            checkColor: Theme.of(context).primaryColor,
                            onChanged: (check) {
                              homeController.setId(
                                  homeController.listaDeTarefas[index].id);
                              homeController.setCheck(check);
                              homeController.updateCheck();
                            },
                            value: homeController.listaDeTarefas[index].check,
                          ),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/addPage");
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
