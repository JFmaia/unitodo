// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AddController = BindInject(
  (i) => AddController(i<AddRepositories>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddController on _AddControllerBase, Store {
  final _$descricaoAtom = Atom(name: '_AddControllerBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$checkAtom = Atom(name: '_AddControllerBase.check');

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

  final _$salvarAsyncAction = AsyncAction('_AddControllerBase.salvar');

  @override
  Future<bool> salvar() {
    return _$salvarAsyncAction.run(() => super.salvar());
  }

  final _$_AddControllerBaseActionController =
      ActionController(name: '_AddControllerBase');

  @override
  dynamic setDescricao(String _desc) {
    final _$actionInfo = _$_AddControllerBaseActionController.startAction(
        name: '_AddControllerBase.setDescricao');
    try {
      return super.setDescricao(_desc);
    } finally {
      _$_AddControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool _check) {
    final _$actionInfo = _$_AddControllerBaseActionController.startAction(
        name: '_AddControllerBase.setCheck');
    try {
      return super.setCheck(_check);
    } finally {
      _$_AddControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
descricao: ${descricao},
check: ${check}
    ''';
  }
}
