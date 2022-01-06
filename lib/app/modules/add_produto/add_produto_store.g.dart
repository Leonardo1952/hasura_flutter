// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_produto_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddProdutoStore on _AddProdutoStoreBase, Store {
  final _$descricaoAtom = Atom(name: '_AddProdutoStoreBase.descricao');

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

  final _$valorAtom = Atom(name: '_AddProdutoStoreBase.valor');

  @override
  String get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(String value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$selectedCategoriaAtom =
      Atom(name: '_AddProdutoStoreBase.selectedCategoria');

  @override
  TipoECategoriaDto get selectedCategoria {
    _$selectedCategoriaAtom.reportRead();
    return super.selectedCategoria;
  }

  @override
  set selectedCategoria(TipoECategoriaDto value) {
    _$selectedCategoriaAtom.reportWrite(value, super.selectedCategoria, () {
      super.selectedCategoria = value;
    });
  }

  final _$selectedTipoAtom = Atom(name: '_AddProdutoStoreBase.selectedTipo');

  @override
  TipoECategoriaDto get selectedTipo {
    _$selectedTipoAtom.reportRead();
    return super.selectedTipo;
  }

  @override
  set selectedTipo(TipoECategoriaDto value) {
    _$selectedTipoAtom.reportWrite(value, super.selectedTipo, () {
      super.selectedTipo = value;
    });
  }

  final _$tipoProdutoAtom = Atom(name: '_AddProdutoStoreBase.tipoProduto');

  @override
  TipoCategoriaProdutoDto get tipoProduto {
    _$tipoProdutoAtom.reportRead();
    return super.tipoProduto;
  }

  @override
  set tipoProduto(TipoCategoriaProdutoDto value) {
    _$tipoProdutoAtom.reportWrite(value, super.tipoProduto, () {
      super.tipoProduto = value;
    });
  }

  final _$salvarAsyncAction = AsyncAction('_AddProdutoStoreBase.salvar');

  @override
  Future<bool> salvar() {
    return _$salvarAsyncAction.run(() => super.salvar());
  }

  final _$_AddProdutoStoreBaseActionController =
      ActionController(name: '_AddProdutoStoreBase');

  @override
  dynamic setDescricao(String _desc) {
    final _$actionInfo = _$_AddProdutoStoreBaseActionController.startAction(
        name: '_AddProdutoStoreBase.setDescricao');
    try {
      return super.setDescricao(_desc);
    } finally {
      _$_AddProdutoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValor(String _valor) {
    final _$actionInfo = _$_AddProdutoStoreBaseActionController.startAction(
        name: '_AddProdutoStoreBase.setValor');
    try {
      return super.setValor(_valor);
    } finally {
      _$_AddProdutoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectedCategoria(TipoECategoriaDto _selectedCategoria) {
    final _$actionInfo = _$_AddProdutoStoreBaseActionController.startAction(
        name: '_AddProdutoStoreBase.setSelectedCategoria');
    try {
      return super.setSelectedCategoria(_selectedCategoria);
    } finally {
      _$_AddProdutoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectedTipo(TipoECategoriaDto _selectedTipo) {
    final _$actionInfo = _$_AddProdutoStoreBaseActionController.startAction(
        name: '_AddProdutoStoreBase.setSelectedTipo');
    try {
      return super.setSelectedTipo(_selectedTipo);
    } finally {
      _$_AddProdutoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
descricao: ${descricao},
valor: ${valor},
selectedCategoria: ${selectedCategoria},
selectedTipo: ${selectedTipo},
tipoProduto: ${tipoProduto}
    ''';
  }
}
