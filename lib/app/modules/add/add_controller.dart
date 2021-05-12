import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unitodo/app/modules/add/data/add_repositories.dart';
part 'add_controller.g.dart';

@Injectable()
class AddController = _AddControllerBase with _$AddController;

abstract class _AddControllerBase with Store {
  final AddRepositories addRepositories;
  _AddControllerBase(this.addRepositories);

  @observable
  String descricao = "";

  @action
  setDescricao(String _desc) {
    descricao = _desc;
  }

  @observable
  bool check = false;

  @action
  setCheck(bool _check) {
    check = _check;
  }

  @action
  Future<bool> salvar() async {
    if (descricao != null && check != null) {
      return await addRepositories.addTarefas(
        descricao,
        check,
      );
    }
    return false;
  }
}
