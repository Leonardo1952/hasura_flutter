import 'package:hasura_flutter/app/modules/add_produto/repositories/add_produto_repository.dart';
import 'package:hasura_flutter/app/modules/add_produto/add_produto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'add_produto_page.dart';

class AddProdutoModule extends Module {
  @override
  final List<Bind> binds = [
    //Controllers
    Bind.lazySingleton((i) => AddProdutoStore(i())),

    //Repositories
    Bind.lazySingleton(
      (i) => AddProdutoRepository(i()),
    )
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const AddProdutoPage()),
  ];
}
