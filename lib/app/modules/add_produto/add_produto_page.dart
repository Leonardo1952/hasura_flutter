import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_flutter/app/shared/widgets/custom_combobox/custom_combobox_widget.dart';
import 'package:hasura_flutter/app/shared/widgets/label_widget.dart';

import 'add_produto_store.dart';

class AddProdutoPage extends StatefulWidget {
  final String title;
  const AddProdutoPage({Key? key, this.title = 'AddProdutoPage'})
      : super(key: key);
  @override
  AddProdutoPageState createState() => AddProdutoPageState();
}

class AddProdutoPageState
    extends ModularState<AddProdutoPage, AddProdutoStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height - 250,
            right: -50,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.4),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 200,
            right: 50,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 150,
            right: 150,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.1),
            ),
          ),
          Container(height: MediaQuery.of(context).size.height),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const LabelWidget(title: "Descrição"),
                  TextField(
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 18),
                    decoration: InputDecoration(
                      hintText: "Descrição do Produto",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 2)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const LabelWidget(title: "Valor:"),
                  TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 18),
                    decoration: InputDecoration(
                      hintText: "Valor",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 2)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const LabelWidget(title: "Categoria do Produto:"),
                  Observer(
                    builder: (BuildContext context) {
                      if (controller.tipoProduto == null) {
                        return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    width: 2,
                                    color: Theme.of(context).primaryColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircularProgressIndicator(),
                                ),
                              ],
                            ));
                      }
                      return CustomComboboxWidget(
                        items: store.tipoProduto.categoriaProduto
                            .map((data) =>
                                Model(id: data.id, descricao: data.descricao))
                            .toList(),
                        onChange: (item) {
                          print(item.descricao);
                        },
                        itemSelecionado: null,
                      );
                    },
                  ),
                  const LabelWidget(title: "Tipo Produto:"),
                  const SizedBox(height: 20),
                  Observer(
                    builder: (BuildContext context) {
                      if (controller.tipoProduto == null) {
                        return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    width: 2,
                                    color: Theme.of(context).primaryColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircularProgressIndicator(),
                                ),
                              ],
                            ));
                      }
                      return CustomComboboxWidget(
                        items: store.tipoProduto.tipoProduto
                            .map((data) =>
                                Model(id: data.id, descricao: data.descricao))
                            .toList(),
                        onChange: (item) {
                          print(item.descricao);
                        },
                        itemSelecionado: null,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor)),
                      onPressed: () {},
                      child: const Text(
                        "Salvar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
