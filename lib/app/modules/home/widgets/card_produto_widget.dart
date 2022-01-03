import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardProdutoWidget extends StatelessWidget {
  final String title;
  const CardProdutoWidget({Key? key, this.title = "CardProdutoWidget"})
      : super(key: key);

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
            const Text(
              "Bolsa Gutty",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              "Bolsa Femininas",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            Row(
              children: const [
                Expanded(
                    child: Text(
                  "Camisetas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                )),
                Text(
                  "R\$ 20,00",
                  style: TextStyle(
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
