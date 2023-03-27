import 'package:flutter/material.dart';
import 'package:english_learn/grammar/elementer/tema2.dart';
import 'package:english_learn/grammar/elementer/tema3.dart';
import 'package:english_learn/grammar/elementer/tema4.dart';
import 'package:english_learn/grammar/elementer/tema5.dart';
import 'package:english_learn/grammar/elementer/tema6.dart';
import 'package:english_learn/grammar/elementer/tema7.dart';
import 'package:english_learn/grammar/elementer/tema1.dart';


class AdvGrammar extends StatefulWidget {
  const AdvGrammar({Key? key}) : super(key: key);

  @override
  State<AdvGrammar> createState() => _AdvGrammarState();
}

class _AdvGrammarState extends State<AdvGrammar> {
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
                  child: Text("Singular and Plural nouns: a/an, the",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tema5()),
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
                  child: Text("Past simple: was",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tema3()),
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
                  child: Text("Future be going to (plans)",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tema1()),
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
                  child: Text("Past simple: be",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tema2()),
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
                  child: Text("Present simple: he, she and it +, -, ?",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tema7()),
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
                  child: Text("There is / there are",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tema4()),
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
                  child: Text("Adjectives",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tema6()),
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
