import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:hasura_flutter/app/modules/add_produto/models/tipo_categoria_produto_dto.dart';

class CustomComboboxWidget extends StatelessWidget {
  final List<Model> items;
  final Function(Model) onChange;
  final Model? itemSelecionado;
  const CustomComboboxWidget({
    Key? key,
    required this.items,
    required this.onChange,
    required this.itemSelecionado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FindDropdown<Model>(
      items: items,
      onChanged: (Model? item) => onChange(item!),
      selectedItem: itemSelecionado,
      validate: (Model? item) {
        if (item == null) {
          return "Você precisa selecionar um valor.";
        } else {
          return null;
        } //return null to "no error"
      },
      dropdownBuilder: (_, model) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(width: 2),
          ),
          child: model == null
              ? ListTile(
                  title: Text(
                  "Selecione um Item",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ))
              : ListTile(
                  title: Text(
                  model.descricao,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
        );
      },
    );
  }
}

class Model {
  final String id;
  final String descricao;
  Model({
    required this.id,
    required this.descricao,
  });

  @override
  String toString() => descricao.toString();

  @override
  operator ==(o) => o is Model && o.id == id;

  @override
  int get hashCode => id.hashCode ^ descricao.hashCode;
}
