import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'widgets/card_produto_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (BuildContext context) {
          return ListView.builder(
              itemCount: store.listaProdutos.length,
              itemBuilder: (BuildContext context, int index) {
                return CardProdutoWidget(
                  nomeProduto: store.listaProdutos[index].nome,
                  valor: store.listaProdutos[index].valor.toString(),
                  categoriaProduto:
                      store.listaProdutos[index].categoriaProduto.descricao,
                  tipoProduto: store.listaProdutos[index].tipoProduto.descricao,
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/AddProduto');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
