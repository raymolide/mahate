import 'package:flutter/material.dart';

Widget myRaisedButtonNext(BuildContext context) {
  return Padding(
      padding: EdgeInsets.zero,
      child: ClipOval(
        child: Material(
          color: Colors.white, // button color
          child: InkWell(
            splashColor: Colors.red,
            child: SizedBox(
                width: 56,
                height: 56,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.red,
                )),
            onTap: () {
              print("next");
              Navigator.pushNamed(context, "/home");
            },
          ),
        ),
      ));
}

Widget myRaisedButtonCadastro(BuildContext context) {
  return Padding(
      padding: EdgeInsets.zero,
      child: ClipOval(
        child: Material(
          color: Colors.white, // button color
          child: InkWell(
            splashColor: Colors.red,
            child: SizedBox(
                width: 56,
                height: 56,
                child: Icon(
                  Icons.add,
                  color: Colors.red,
                )),
            onTap: () {},
          ),
        ),
      ));
}
