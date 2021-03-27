import 'package:flutter/material.dart';
import 'package:mahate/model/produto.dart';
import 'package:provider/provider.dart';

class Data extends ChangeNotifier {
  int cartNumber = 0;
  List<Produto> prods = [];

  int get getCartNumber => cartNumber;
  List<Produto> get lista => prods;

  void addValor(int valor) {
    cartNumber = valor;
    notifyListeners();
  }

  void printar() {
    print("funcionando");
    print("Cart $cartNumber");
    notifyListeners();
  }

  void addProd(Produto prod) {
    prods.add(prod);
    notifyListeners();
  }
}
