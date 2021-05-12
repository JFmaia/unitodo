import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:unitodo/app/modules/home/models/tarefa.dart';

part 'repositories_repository.g.dart';

@Injectable()
class RepositoriesRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  RepositoriesRepository(this._hasuraConnect);

  Future<List<Tarefa>> getTarefas() async {
    var guery = """
        query getTarefas {
          tarefa {
            id
            descricao
            created_at
            check
          }
      }
    """;

    var snapshot = await _hasuraConnect.query(guery);
    return Tarefa.fromJsonList(snapshot['data']['tarefa'] as List);
  }

  Future<bool> updateTarefas(String id, bool check) async {
    var mutation = """ 
        mutation updateCheck(\$id: uuid,\$check : Boolean) {
          update_tarefa(where: {id: {_eq: \$id}}, _set: {check:\$check}) {
            affected_rows
          }
        }
    """;
    var snapshot = await _hasuraConnect.mutation(
      mutation,
      variables: {
        "id": id,
        "check": check,
      },
    );
    return snapshot["data"]["update_tarefa"]["affected_rows"] > 0;
  }

  Future<bool> deleteTarefa(String id) async {
    var mutation = """ 
        mutation deleteTarefa (\$id: uuid){
          delete_tarefa(where: {id: {_eq: \$id}}) {
            affected_rows
          }
        }
    """;

    var snapshot = await _hasuraConnect.mutation(
      mutation,
      variables: {
        "d": id,
      },
    );
    return snapshot["data"]["delete_tarefa"]["affected_rows"] > 0;
  }

  @override
  void dispose() {}
}
