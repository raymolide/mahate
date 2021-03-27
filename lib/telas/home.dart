import 'package:flutter/material.dart';
import 'package:mahate/mywidgets/mydrawer.dart';
import 'package:mahate/telas/profile.dart';
import 'package:mahate/telas/start.dart';
import 'package:mahate/telas/favorite.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexActual = 0;

  final List<Widget> screens = [StartPage(), FavoritePage(), ProfilePage()];

  void onTapped(index) {
    setState(() {
      indexActual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
          elevation: 5,
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
          child: SizedBox(
              width: double.infinity,
              height: 80,
              child: BottomNavigationBar(
                  unselectedItemColor: Colors.white30,
                  fixedColor: Colors.white,
                  backgroundColor: Colors.red,
                  currentIndex: indexActual,
                  onTap: onTapped,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.store_mall_directory_sharp),
                      label: "Inicial",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: "Favoritos",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: "Minha Conta",
                    ),
                  ]))),
      body: screens[indexActual],
    );
  }
}
