import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
part 'add_repositories.g.dart';

@Injectable()
class AddRepositories extends Disposable {
  final HasuraConnect _hasuraConnect;

  AddRepositories(this._hasuraConnect);

  //Add a task to the list
  Future<bool> addTarefas(String descricao, bool check) async {
    var mutation = """ 
        mutation addTarefas(\$descricao: String, \$check:Boolean){
          insert_tarefa(objects: {descricao: \$descricao, check: \$check}) {
            affected_rows
         }
       }
    """;
    var snapshot = await _hasuraConnect.mutation(
      mutation,
      variables: {
        "descricao": descricao,
        "check": check,
      },
    );
    return snapshot["data"]["insert_tarefa"]["affected_rows"] > 0;
  }

  @override
  void dispose() {}
}
