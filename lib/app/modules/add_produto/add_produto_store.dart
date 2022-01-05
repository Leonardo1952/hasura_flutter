import 'package:hasura_flutter/app/modules/add_produto/models/tipo_categoria_produto_dto.dart';
import 'package:hasura_flutter/app/modules/add_produto/repositories/add_produto_repository.dart';
import 'package:hasura_flutter/app/modules/home/models/add_produto/produto_model.dart';
import 'package:mobx/mobx.dart';

part 'add_produto_store.g.dart';

class AddProdutoStore = _AddProdutoStoreBase with _$AddProdutoStore;

abstract class _AddProdutoStoreBase with Store {
  final AddProdutoRepository addProdutoRepository;
  @observable
  int value = 0;

  _AddProdutoStoreBase(this.addProdutoRepository) {
    addProdutoRepository.getTipoCategoriaProduto().then((value) {
      tipoProduto = value;
    });
  }

  @observable
  TipoCategoriaProdutoDto tipoProduto = TipoCategoriaProdutoDto.fromJson({
    "tipo_produto": [
      {"id": "1", "descricao": "A"},
      {"id": "b", "descricao": "A"},
      {"id": "6", "descricao": "A"}
    ],
    "categoria_produto": [
      {"id": "e", "descricao": "P"},
      {"id": "4", "descricao": "M"},
      {"id": "b", "descricao": "J"}
    ]
  });
}
