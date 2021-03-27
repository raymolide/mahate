import 'package:flutter/material.dart';
import 'package:mahate/controlador/data.dart';
import 'package:mahate/telas/comprar.dart';
import 'package:mahate/telas/login.dart';
import 'package:provider/provider.dart';
import 'controlador/getit.dart';
import 'telas/home.dart';

void main() {
  setUpGetIt();

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Data())],
    child: MaterialApp(
      theme: ThemeData(accentColor: Colors.red, primaryColor: Colors.red),
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/comprar': (context) => Compra(),
      },
      initialRoute: '/login',
    ),
  ));
}
