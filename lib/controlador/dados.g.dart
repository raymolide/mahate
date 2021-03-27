// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Dados on _Dados, Store {
  final _$prodsAtom = Atom(name: '_Dados.prods');

  @override
  ObservableList<dynamic> get prods {
    _$prodsAtom.reportRead();
    return super.prods;
  }

  @override
  set prods(ObservableList<dynamic> value) {
    _$prodsAtom.reportWrite(value, super.prods, () {
      super.prods = value;
    });
  }

  final _$cartNumberAtom = Atom(name: '_Dados.cartNumber');

  @override
  int get cartNumber {
    _$cartNumberAtom.reportRead();
    return super.cartNumber;
  }

  @override
  set cartNumber(int value) {
    _$cartNumberAtom.reportWrite(value, super.cartNumber, () {
      super.cartNumber = value;
    });
  }

  final _$_DadosActionController = ActionController(name: '_Dados');

  @override
  void incrementCart(int valor) {
    final _$actionInfo =
        _$_DadosActionController.startAction(name: '_Dados.incrementCart');
    try {
      return super.incrementCart(valor);
    } finally {
      _$_DadosActionController.endAction(_$actionInfo);
    }
  }

  @override
  void favoriteProds(Produto prod) {
    final _$actionInfo =
        _$_DadosActionController.startAction(name: '_Dados.favoriteProds');
    try {
      return super.favoriteProds(prod);
    } finally {
      _$_DadosActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
prods: ${prods},
cartNumber: ${cartNumber}
    ''';
  }
}
