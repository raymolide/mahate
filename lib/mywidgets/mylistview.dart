import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mahate/controlador/dados.dart';
import 'package:mahate/controlador/data.dart';
import 'package:mahate/controlador/getit.dart';
import 'package:mahate/model/produto.dart';

var data = Data();

Widget mylistview(List prods) {
  return ListView.separated(
      itemCount: prods.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
            color: Colors.black26,
            height: 30,
          ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          splashColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, "/comprar");
          },
          child: itens(
              prods.elementAt(index).natureza,
              prods.elementAt(index).nome,
              prods.elementAt(index).tempo,
              prods.elementAt(index).valor),
        );
      });
}

Widget itens(String natureza, String nome, String tempo, double valor) {
  return Container(
      alignment: Alignment.center,
      child: Slidable(
          actions: <Widget>[
            Observer(builder: (_) {
              return IconSlideAction(
                caption: 'Favorite',
                color: Colors.red,
                icon: Icons.star,
                onTap: () {
                  Produto prod = Produto(
                      nome: nome,
                      natureza: natureza,
                      tempo: tempo,
                      valor: valor,
                      foto: "null");
                  data.printar();
                  data.addProd(prod);
                  print(data.prods.toString());

                  getIt<Dados>();
                },
              );
            }),
          ],
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
          child: Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.person_pin,
                  size: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "$nome",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("$natureza"),
                        Text("|  $tempo  |"),
                        Text("  $valor"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )));
}
