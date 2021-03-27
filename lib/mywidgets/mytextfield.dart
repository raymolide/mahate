import 'package:flutter/material.dart';

Widget myTextFormField(String hint, bool obscure) {
  return Padding(
    padding: EdgeInsets.only(left: 0, right: 15, top: 5, bottom: 5),
    child: new Theme(
        data: new ThemeData(
          primaryColor: Colors.red,
          primaryColorDark: Colors.red,
        ),
        child: TextFormField(
          textAlign: TextAlign.start,
          obscureText: obscure,
          decoration: InputDecoration(
              hintStyle: TextStyle(),
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.red,
              hintText: hint,
              border: OutlineInputBorder(
                borderSide: new BorderSide(width: 2, color: Colors.red),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              )),
        )),
  );
}
