import 'package:flutter/material.dart';
import 'package:unitodo/app/modules/add/add_controller.dart';
import 'package:unitodo/app/modules/add/add_module.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    AddController addController = AddModule.to.get();
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Tarefa"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Descrição",
                ),
                onChanged: (value) => addController.setDescricao(value),
              ),
              SizedBox(
                height: 5,
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () async {
                  var result = await addController.salvar();
                  if (result) {
                    Navigator.of(context).pop();
                  } else {
                    showDialog(
                      context: context,
                      child: AlertDialog(
                        content: Text("Erro ao tentar salvar o produto!!"),
                        actions: [
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
