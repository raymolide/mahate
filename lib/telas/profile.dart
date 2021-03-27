import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mahate/controlador/dados.dart';
import 'package:mahate/controlador/data.dart';
import 'package:mahate/mywidgets/mydrawer.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Dados dados = Dados();
  int valor = 0;

  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: IconButton(
                          icon: Icon(Icons.menu, color: Colors.white),
                          onPressed: () {
                            _scaffold.currentState.openDrawer();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 7,
                      left: MediaQuery.of(context).size.width / 10),
                  child: ListTile(
                    leading: IconButton(
                      icon: Icon(Icons.person, color: Colors.white),
                      iconSize: 50,
                    ),
                    title: Text(
                      "Raimundo Molide",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Flutter Dev",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 20,
                right: MediaQuery.of(context).size.width / 20,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Minhas Tarefas",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ClipOval(
                        child: Container(
                            height: 28,
                            width: 28,
                            color: Colors.green[700],
                            child: IconButton(
                                icon: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 12,
                            )))),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: ClipOval(
                child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.green[700],
                    child: IconButton(
                        icon: Icon(
                      Icons.alarm,
                      color: Colors.white,
                      size: 25,
                    ))),
              ),
              title: Text("To Do", textAlign: TextAlign.start),
              subtitle: Text(
                "5 tarefas, 1 iniciada",
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              leading: ClipOval(
                child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.yellow[700],
                    child: IconButton(
                        icon: Icon(
                      Icons.access_time_sharp,
                      color: Colors.white,
                      size: 25,
                    ))),
              ),
              title: Text("To Do", textAlign: TextAlign.start),
              subtitle: Text(
                "1 tarefa, 1 iniciada",
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              leading: ClipOval(
                child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.blue[700],
                    child: IconButton(
                        icon: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 25,
                    ))),
              ),
              title: Text("To Do", textAlign: TextAlign.start),
              subtitle: Text(
                "18 tarefas, 13 iniciadas",
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                    left: MediaQuery.of(context).size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Projectos Activos",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "Verdana", fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
