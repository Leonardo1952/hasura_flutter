import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardProdutoWidget extends StatelessWidget {
  final String nomeProduto;
  final String categoriaProduto;
  final String tipoProduto;
  final String valor;

  const CardProdutoWidget({
    Key? key,
    required this.nomeProduto,
    required this.categoriaProduto,
    required this.tipoProduto,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Stack(children: [
      Positioned(
        top: 50,
        right: -50,
        child: CircleAvatar(
          radius: 130,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(.4),
        ),
      ),
      Positioned(
        top: 100,
        right: 50,
        child: CircleAvatar(
          radius: 130,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
        ),
      ),
      Positioned(
        top: 120,
        right: 150,
        child: CircleAvatar(
          radius: 130,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(.1),
        ),
      ),
      Container(
        height: 160,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nomeProduto,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              categoriaProduto,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  tipoProduto,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                )),
                Text(
                  valor,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}
