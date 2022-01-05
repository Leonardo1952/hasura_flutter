class ProdutoModel {
  final String id;
  final String nome;
  final int valor;
  final AtributoGenerico tipoProduto;
  final AtributoGenerico categoriaProduto;

  ProdutoModel({
    required this.id,
    required this.nome,
    required this.valor,
    required this.tipoProduto,
    required this.categoriaProduto,
  });

  factory ProdutoModel.fromJson(Map<String, dynamic> json) => ProdutoModel(
        id: json["id"],
        nome: json["nome"],
        valor: json["valor"],
        tipoProduto: AtributoGenerico.fromJson(json["tipo_produto"]),
        categoriaProduto: AtributoGenerico.fromJson(json["categoria_produto"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "valor": valor,
        "tipo_produto": tipoProduto.toJson(),
        "categoria_produto": categoriaProduto.toJson(),
      };

  static List<ProdutoModel> fromJsonList(List list) {
    return list
        .map<ProdutoModel>((item) => ProdutoModel.fromJson(item))
        .toList();
  }
}

class AtributoGenerico {
  AtributoGenerico({
    required this.descricao,
  });

  String descricao;

  factory AtributoGenerico.fromJson(Map<String, dynamic> json) =>
      AtributoGenerico(
        descricao: json["descricao"],
      );

  Map<String, dynamic> toJson() => {
        "descricao": descricao,
      };
}
