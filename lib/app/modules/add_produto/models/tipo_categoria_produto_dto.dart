class TipoCategoriaProdutoDto {
  TipoCategoriaProdutoDto({
    required this.tipoProduto,
    required this.categoriaProduto,
  });

  List<TipoECategoriaDto> tipoProduto;
  List<TipoECategoriaDto> categoriaProduto;

  factory TipoCategoriaProdutoDto.fromJson(Map<String, dynamic> json) =>
      TipoCategoriaProdutoDto(
        tipoProduto: List<TipoECategoriaDto>.from(
            json["tipo_produto"].map((x) => TipoECategoriaDto.fromJson(x))),
        categoriaProduto: List<TipoECategoriaDto>.from(json["categoria_produto"]
            .map((x) => TipoECategoriaDto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "tipo_produto": List<dynamic>.from(tipoProduto.map((x) => x.toJson())),
        "categoria_produto":
            List<dynamic>.from(categoriaProduto.map((x) => x.toJson())),
      };

  static List<TipoECategoriaDto> fromJsonList(List list) {
    return list
        .map<TipoECategoriaDto>((item) => TipoECategoriaDto.fromJson(item))
        .toList();
  }
}

class TipoECategoriaDto {
  TipoECategoriaDto({
    required this.id,
    required this.descricao,
  });

  String id;
  String descricao;

  factory TipoECategoriaDto.fromJson(Map<String, dynamic> json) =>
      TipoECategoriaDto(
        id: json["id"],
        descricao: json["descricao"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "descricao": descricao,
      };
}
