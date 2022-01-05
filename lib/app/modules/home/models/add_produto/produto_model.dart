class ProdutoModel {
  final String id;
  final String nome;
  final int valor;
  final TipoOuCategoriaDto tipoProduto;
  final TipoOuCategoriaDto categoriaProduto;

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
        tipoProduto: TipoOuCategoriaDto.fromJson(json["tipo_produto"]),
        categoriaProduto:
            TipoOuCategoriaDto.fromJson(json["categoria_produto"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "valor": valor,
        "tipo_produto": tipoProduto.toJson(),
        "categoria_produto": categoriaProduto.toJson(),
      };

  //Este foi escrito separado
  static List<ProdutoModel> fromJsonList(List list) {
    return list
        .map<ProdutoModel>((item) => ProdutoModel.fromJson(item))
        .toList();

    ///
  }
}

class TipoOuCategoriaDto {
  TipoOuCategoriaDto({
    required this.descricao,
  });

  String descricao;

  factory TipoOuCategoriaDto.fromJson(Map<String, dynamic> json) =>
      TipoOuCategoriaDto(
        descricao: json["descricao"],
      );

  Map<String, dynamic> toJson() => {
        "descricao": descricao,
      };
}
