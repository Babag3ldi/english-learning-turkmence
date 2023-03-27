import 'package:flutter/material.dart';
import 'package:english_learn/grammar/begin/tema3.dart';

import 'tema1.dart';
import 'tema2.dart';
import 'tema4.dart';
import 'tema5.dart';
import 'tema6.dart';
import 'tema7.dart';

class Grammar extends StatefulWidget {
  const Grammar({Key? key}) : super(key: key);

  @override
  State<Grammar> createState() => _GrammarState();
}

class _GrammarState extends State<Grammar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipper2(),
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "TEST",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.lightBlue,
                  Colors.lightBlueAccent.shade400
                ])),
              ),
            ),
            ClipPath(
              clipper: WaveClipper3(),
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "TEST",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.cyanAccent, Colors.cyan])),
              ),
            ),
            ClipPath(
              clipper: WaveClipper1(),
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "TEST",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.lightBlueAccent.withOpacity(1.0)
                ])),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            height: 200,
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/Gramm.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.redAccent,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: InkWell(
            child: Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.redAccent,
              ),
              child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text("Present tense verb be: I and you + and ?",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Tema1()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: InkWell(
            child: Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.brown,
              ),
              child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text("Present tense verb be: He, She. It + ?",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Tema2()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: InkWell(
            child: Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.pinkAccent,
              ),
              child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text("Present tense verb be: We, You, They",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Tema3()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: InkWell(
            child: Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.cyanAccent,
              ),
              child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text("Present simple: I and You +, ?",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Tema4()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: InkWell(
            child: Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.redAccent,
              ),
              child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text("Present simple: We, You and They +, -, ?",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Tema5()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: InkWell(
            child: Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.greenAccent,
              ),
              child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text("Future be going to (predictions)",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Tema6()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 20),
          child: InkWell(
            child: Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.blueAccent,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15,),
                  child: Text("Future be going to",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Tema7()),
              );
            },
          ),
        ),
      ]),
    ]));
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
