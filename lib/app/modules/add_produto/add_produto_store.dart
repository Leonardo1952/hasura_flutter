import 'package:mobx/mobx.dart';

part 'add_produto_store.g.dart';

class AddProdutoStore = _AddProdutoStoreBase with _$AddProdutoStore;

abstract class _AddProdutoStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
