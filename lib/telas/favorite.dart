import 'package:flutter/material.dart';
import 'package:mahate/controlador/dados.dart';
import 'package:mahate/controlador/data.dart';
import 'package:mahate/controlador/getit.dart';
import 'package:mahate/mywidgets/mylistview.dart';
import 'package:mahate/mywidgets/mytextfield.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  Data data = Data();

  var produtos = getIt<Dados>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      body: Column(
        children: [
          myTextFormField("Pesquisar", false),
          Text(produtos.cartNumber.toString()),
          Flexible(child: mylistview(produtos.prods))
        ],
      ),
    );
  }
}
