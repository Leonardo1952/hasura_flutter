import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_flutter/app/modules/add_produto/add_produto_module.dart';

import 'modules/add_produto/add_produto_page.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/AddProduto', module: AddProdutoModule()),
  ];
}
