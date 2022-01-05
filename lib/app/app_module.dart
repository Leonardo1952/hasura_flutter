import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hasura_flutter/app/app_controller.dart';
import 'package:hasura_flutter/app/modules/add_produto/add_produto_module.dart';

import 'modules/home/home_module.dart';
import 'shared/widgets/custom_combobox/custom_combobox_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CustomComboboxController()),
    Bind.lazySingleton((i) => AppController()),
    //Outros
    Bind.lazySingleton((i) => HasuraConnect(
        "https://loja-hasura-flutter-leo.herokuapp.com/v1/graphql")),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/AddProduto', module: AddProdutoModule()),
  ];
}
