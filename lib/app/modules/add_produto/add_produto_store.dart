import 'package:hasura_flutter/app/modules/add_produto/models/tipo_categoria_produto_dto.dart';
import 'package:hasura_flutter/app/modules/add_produto/repositories/add_produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'add_produto_store.g.dart';

class AddProdutoStore = _AddProdutoStoreBase with _$AddProdutoStore;

abstract class _AddProdutoStoreBase with Store {
  final AddProdutoRepository addProdutoRepository;

  _AddProdutoStoreBase(this.addProdutoRepository) {
    addProdutoRepository.getTipoCategoriaProduto().then((value) {
      tipoProduto = value;
    });
  }

  @observable
  String descricao = "";

  @action
  setDescricao(String _desc) {
    descricao = _desc;
  }

  @observable
  String valor = "";

  @action
  setValor(String _valor) {
    valor = _valor;
  }

  @observable
  TipoECategoriaDto selectedCategoria =
      TipoECategoriaDto.fromJson({"id": "", "descricao": ""});

  @action
  setSelectedCategoria(TipoECategoriaDto _selectedCategoria) {
    selectedCategoria = _selectedCategoria;
  }

  @observable
  TipoECategoriaDto selectedTipo =
      TipoECategoriaDto.fromJson({"id": "", "descricao": ""});

  @action
  setSelectedTipo(TipoECategoriaDto _selectedTipo) {
    selectedTipo = _selectedTipo;
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

  @action
  Future<bool> salvar() async {
    print("descricao: " + descricao);
    print("valor: " + valor);
    print("selecionarTipo: " + selectedTipo.descricao);
    print("selecionarCategoria: " + selectedCategoria.descricao);

    return await addProdutoRepository.addProduto(
        descricao, valor, selectedTipo.id, selectedCategoria.id);
  }
}
