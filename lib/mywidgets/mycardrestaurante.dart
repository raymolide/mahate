import 'package:flutter/material.dart';

Widget cardRestaurante(String local, String nome, String horario, String logo,
    BuildContext context) {
  return Container(
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(2.0), child: Image.asset('$logo')),
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
                        "Horario",
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
                        "$horario",
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
                      "Visitar Agora!",
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
