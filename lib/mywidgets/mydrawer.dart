import 'package:flutter/material.dart';

Widget CustomDrawer({BuildContext pageContext}) {
  return Drawer(
    elevation: 10,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.red),
          child: Column(
            children: [
              ListTile(
                  title: Text(
                "Perfil",
                style: TextStyle(color: Colors.white),
              )),
              ListTile(
                title: Text("Ray Molide",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                subtitle: Text("Cliente",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                leading: CircleAvatar(
                  child: SizedBox(
                    height: 900,
                    width: 900,
                    child: ClipOval(
                      child: Image.network(
                          "https://pbs.twimg.com/profile_images/1365249100938153984/1ud1u6rw_400x400.jpg"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: IconButton(icon: Icon(Icons.home)),
          title: Text("Home"),
          onTap: () {
            Navigator.pushNamed(pageContext, '/home');
          },
        ),
        ListTile(
          leading: IconButton(icon: Icon(Icons.local_grocery_store_outlined)),
          title: Text("Promoções"),
          onTap: () {
            Navigator.pushReplacementNamed(pageContext, '/continent');
          },
        ),
        ListTile(
          leading: IconButton(icon: Icon(Icons.search)),
          title: Text("Pesquisar Restaurante"),
          onTap: () {
            Navigator.pushReplacementNamed(pageContext, '/search');
          },
        ),
        ListTile(
          leading: IconButton(icon: Icon(Icons.favorite)),
          title: Text("Restaurantes Salvos"),
          onTap: () {
            Navigator.pushReplacementNamed(pageContext, "/continent");
          },
        ),
      ],
    ),
  );
}
