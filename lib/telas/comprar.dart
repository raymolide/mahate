import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mahate/controlador/dados.dart';
import 'package:mahate/controlador/data.dart';
import 'package:mahate/model/produto.dart';
import 'package:mahate/model/restaurante.dart';
import 'package:mahate/mywidgets/cartao.dart';
import 'package:mahate/mywidgets/mostrarRestaurate.dart';
import 'package:mahate/mywidgets/mycardprice.dart';
import 'package:mahate/mywidgets/mydrawer.dart';
import 'package:mahate/mywidgets/mylistview.dart';
import 'package:mahate/mywidgets/mytextfield.dart';
import 'package:mobx/mobx.dart';

class Compra extends StatefulWidget {
  @override
  _CompraState createState() => _CompraState();
}

class _CompraState extends State<Compra> {
  static final prods = [
    Produto(
        natureza: "Moçambicana",
        nome: "Matapa",
        tempo: "13m",
        valor: 250,
        foto: "images/matapa.jpeg"),
    Produto(
        natureza: "Americana",
        nome: "Hamburguer",
        tempo: "10m",
        valor: 300,
        foto: "images/hamburguer.jpeg"),
    Produto(
        natureza: "Chinesa",
        nome: "Sushi",
        tempo: "5m",
        valor: 426,
        foto: "images/sushi.jpeg"),
    Produto(
        natureza: "Italiana",
        nome: "Pizza",
        tempo: "13m",
        valor: 750,
        foto: "images/pizza.jpeg")
  ];

  final restaurante = [
    Restaurante(
        nome: "Ivana's Tasty",
        local: "Maputo",
        horario: "07h-22h",
        logo: "images/ivanas.jpeg",
        produtos: prods),
    Restaurante(
        nome: "KFC",
        local: "Maputo",
        horario: "08h-21h",
        logo: "images/kfc.png"),
    Restaurante(
        nome: "Olimpia Tasty",
        local: "Maputo",
        horario: "08h-20h",
        logo: "images/Olympia Tasty.png"),
    Restaurante(
        nome: "Pizza Hut",
        local: "Maputo",
        horario: "09h-23h",
        logo: "images/pizzahut.jpg"),
  ];

  Data dados = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("Comprar"),
          actions: [
            Row(children: [
              Text(dados.getCartNumber.toString()),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  onPressed: () {}),
            ]),
            IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
                onPressed: () {}),
          ],
        ),
        body: Container(
            child: Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height,
          child: Flexible(
            fit: FlexFit.loose,
            child: Card(
              margin:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 160),
              color: Colors.white,
              elevation: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                          "https://receitaparatudo.com/wp-content/uploads/2015/02/matapa1.jpg"),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Maputo",
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
                                "Matapa",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "250 MT",
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
                            onPressed: () {
                              setState(() {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return confirmacao(context);
                                    });
                              });
                            },
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}

Widget confirmacao(context) {
  TextEditingController controller = TextEditingController();
  return Container(
    child: AlertDialog(
      actions: [
        Observer(builder: (_) {
          return FlatButton(
              onPressed: () {
                data.addValor(int.parse(controller.value.text));
                Navigator.pop(context, true);
              },
              child: Text("Confirmar"));
        }),
        FlatButton(onPressed: () {}, child: Text("Cancelar"))
      ],
      title: Text("Confirmação"),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Image.network(
                    "https://receitaparatudo.com/wp-content/uploads/2015/02/matapa1.jpg"),
              ),
            ),
            TextFormField(
              controller: controller,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                  hintStyle: TextStyle(),
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.red,
                  hintText: "Digite a quantidade",
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(width: 2, color: Colors.red),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  )),
            ),
          ],
        ),
      ),
    ),
  );
}
