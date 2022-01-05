import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hasura_flutter/app/modules/home/repositories/home_repository.dart';
import 'package:hasura_flutter/app/modules/home/widgets/card_produto_controller.dart';
import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //Controllers
    Bind.lazySingleton((i) => CardProdutoController()),
    //Repositories
    Bind.lazySingleton((i) => HomeRepository(i())),
    Bind.lazySingleton((i) => HomeController(i())),

    //Outros
    Bind.lazySingleton((i) => HasuraConnect(
        "https://loja-hasura-flutter-leo.herokuapp.com/v1/graphql")),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
