import 'package:flutter_modular/flutter_modular.dart';
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
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
