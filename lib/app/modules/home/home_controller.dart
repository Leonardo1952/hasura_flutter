import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_flutter/app/modules/home/home_module.dart';
import 'package:hasura_flutter/app/modules/home/models/produto_model.dart';
import 'package:mobx/mobx.dart';

import 'package:hasura_flutter/app/modules/home/repositories/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final HomeRepository _repository;

  _HomeBase(this._repository) {
    init();
  }

  @action
  Future<void> init() async {
    listaProdutos = await _repository.getProduto();
  }

  @observable
  List<ProdutoModel> listaProdutos = [];
}
