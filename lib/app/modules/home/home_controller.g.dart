// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<RepositoriesRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$listaDeTarefasAtom = Atom(name: '_HomeControllerBase.listaDeTarefas');

  @override
  List<Tarefa> get listaDeTarefas {
    _$listaDeTarefasAtom.reportRead();
    return super.listaDeTarefas;
  }

  @override
  set listaDeTarefas(List<Tarefa> value) {
    _$listaDeTarefasAtom.reportWrite(value, super.listaDeTarefas, () {
      super.listaDeTarefas = value;
    });
  }

  final _$idAtom = Atom(name: '_HomeControllerBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$checkAtom = Atom(name: '_HomeControllerBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$updateCheckAsyncAction =
      AsyncAction('_HomeControllerBase.updateCheck');

  @override
  Future<bool> updateCheck() {
    return _$updateCheckAsyncAction.run(() => super.updateCheck());
  }

  final _$deleteTarefaAsyncAction =
      AsyncAction('_HomeControllerBase.deleteTarefa');

  @override
  Future<bool> deleteTarefa() {
    return _$deleteTarefaAsyncAction.run(() => super.deleteTarefa());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setId(String _id) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setId');
    try {
      return super.setId(_id);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool _check) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setCheck');
    try {
      return super.setCheck(_check);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaDeTarefas: ${listaDeTarefas},
id: ${id},
check: ${check}
    ''';
  }
}
