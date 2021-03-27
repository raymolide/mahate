import 'package:flutter/material.dart';
import 'mycardrestaurante.dart';

Widget restaurantes(List restaurante, BuildContext context) {
  return Container(
    color: Colors.red[700],
    child: ListView.separated(
        itemCount: restaurante.length,
        separatorBuilder: (BuildContext context, int index) => Divider(
              color: Colors.black26,
              height: 30,
            ),
        itemBuilder: (BuildContext context, int i) {
          String local = restaurante.elementAt(i).local.toString();
          String nome = restaurante.elementAt(i).nome.toString();
          String horario = restaurante.elementAt(i).horario.toString();
          String logo = restaurante.elementAt(i).logo.toString();
          return cardRestaurante(local, nome, horario, logo, context);
        }),
  );
}
