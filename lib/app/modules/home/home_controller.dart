import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories_repository.dart';
import 'models/tarefa.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final RepositoriesRepository _repositorio;

  _HomeControllerBase(this._repositorio) {
    _repositorio.getTarefas().then((data) => listaDeTarefas = data);
  }
  @observable
  List<Tarefa> listaDeTarefas = [];

  @observable
  String id = "";

  @action
  setId(String _id) {
    id = _id;
  }

  @observable
  bool check = false;

  @action
  setCheck(bool _check) {
    check = _check;
  }

  @action
  Future<bool> updateCheck() async {
    if (check != null && id != null) {
      return await _repositorio.updateTarefas(
        id,
        check,
      );
    }
    return false;
  }

  @action
  Future<bool> deleteTarefa() async {
    if (id != null) {
      return await _repositorio.deleteTarefa(
        id,
      );
    }
    return false;
  }
}
