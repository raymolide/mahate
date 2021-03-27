import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mahate/mywidgets/myRaisedButton.dart';
import 'package:mahate/mywidgets/mytextfield.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: CustomPaint(
          painter: BackgroundPaint(),
          child: Container(
            child: Center(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.fastfood_outlined,
                        size: 75,
                        color: Colors.red,
                      ),
                      Text(
                        "Mahate",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontFamily: "Verdana",
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: myTextFormField("Nome", false)),
                      myTextFormField("Senha", true),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Text(
                                "Esqueceu a senha?",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: myRaisedButtonCadastro(context),
                          ),
                          SizedBox(width: 50),
                          SizedBox(
                            child: myRaisedButtonNext(context),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    Path path = Path();
    paint.color = Colors.white;
    path.lineTo(0, size.height - size.width / 2);

    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.60, size.width * 1.2, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
