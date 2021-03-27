import 'package:flutter/material.dart';
import 'package:mahate/model/produto.dart';

Widget promo(List<Produto> prods) {
  return Container(
    color: Colors.red[700],
    child: ListView.separated(
        itemCount: prods.length,
        separatorBuilder: (BuildContext context, int index) => Divider(
              color: Colors.black26,
              height: 30,
            ),
        itemBuilder: (BuildContext context, int i) {
          String local = prods.elementAt(i).natureza.toString();
          String nome = prods.elementAt(i).nome.toString();
          String valor = prods.elementAt(i).valor.toString();
          String foto = prods.elementAt(i).foto.toString();
          return cardEncomenda(local, nome, valor, foto, context);
        }),
  );
}

Widget cardEncomenda(String local, String nome, String price, String foto,
    BuildContext context) {
  return Container(
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(2.0), child: Image.asset('$foto')),
            Divider(color: Colors.black26),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$local",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "450MT",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red),
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$nome",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "$price MT",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(color: Colors.black26),
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500],
                    offset: Offset(0.0, 1.5),
                    blurRadius: 1.5,
                  ),
                ]),
                padding: EdgeInsets.all(2.0),
                child: SizedBox(
                  //width: 300.0,
                  height: 40.0,
                  child: RaisedButton(
                    child: Text(
                      "Pedir Agora!",
                      style: TextStyle(color: Colors.red),
                    ),
                    textColor: Colors.white,
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ))
          ],
        ),
      ),
    ),
  );
}
