import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hasura_flutter/app/modules/home/models/add_produto/produto_model.dart';

class HomeRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  HomeRepository(this._hasuraConnect);

  Future<List<ProdutoModel>> getProduto() async {
    var query = '''
    query getProdutos {
      produto {
    id
    nome
    valor
    tipo_produto {
      descricao
    }
  
  categoria_produto {
    descricao
  }
  }
}''';
    var snapshot = await _hasuraConnect.query(query);
    return ProdutoModel.fromJsonList(snapshot["data"]["produto"] as List);
  }

  @override
  void dispose() {}
}
