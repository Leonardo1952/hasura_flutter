import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_flutter/app/modules/add_produto/add_produto_store.dart';

void main() {
  late AddProdutoStore store;

  setUpAll(() {
    store = AddProdutoStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
