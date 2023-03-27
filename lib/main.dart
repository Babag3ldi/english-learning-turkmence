import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:english_learn/vocabulary/begin/main1.dart';

import 'grammar/advanced/advancedGrammar.dart';
import 'grammar/begin/beginGrarmmar.dart';
import 'grammar/elementer/elementerGrammar.dart';
import 'grammar/inter/interGrammar.dart';
import 'grammar/pre/preGrammar.dart';
import 'grammar/upper/upperGrammar.dart';
import 'vocabulary/advanced/main1.dart';
import 'vocabulary/elementer/main1.dart';
import 'vocabulary/inter/main1.dart';
import 'vocabulary/pre/main1.dart';
import 'vocabulary/upper/main1.dart';

void main() => runApp(new MyApp1());

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transition Animation Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Column(children: [
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
                                "English Learn",
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
                                "English Learn",
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
                                "English Learn",
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 360,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/Grammar.jpg')),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 168.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/begin.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Grammar()),
                            );
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 168.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/elementer.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ElementerGrammar()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 168.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/pre.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreGrammar()),
                            );
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 168.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/inter.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InterGrammar()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 168.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/upper.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UpperGrammar()),
                            );
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 168.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/advanced.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdvGrammar()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(children: [
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
                                "English Learn",
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
                                "English Learn",
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
                                "English Learn",
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 360,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/Vocabulary.jpg')),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.redAccent,
                        ),
                      ),
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Begin1()),
                      //   );
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 168.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/begin.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Begin()),
                            );
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 168.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/elementer.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Elementer()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 168.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/pre.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Pre()),
                            );
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 168.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/inter.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Inter()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 168.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/upper.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Upper()),
                            );
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 168.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/advanced.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Advan()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              child: Column(children: [
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
                              "About us",
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
                              "About us",
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
                              "About us",
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
                Center(
                    child: SingleChildScrollView(
                  child: Column(children: const [
                    SizedBox(
                      height: 200,
                    ),
                    Text(
                      "Taýýarlan: Dowrankulyyev Eziz",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "dowrankuyyev@gmail.com",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Terjimeçi: Dowrankulyyev Eziz",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 270,
                    ),
                    Text(
                      "Oguzhan university 2022",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                ))
              ]),
            ),
            // Container(color: Colors.blue,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.lightBlue,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Grammar',
            icon: Icon(Icons.assignment_outlined),
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            label: 'Vocabulary',
            icon: Icon(
              Icons.text_snippet,
            ),
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            label: 'About us',
            icon: Icon(Icons.help),
            backgroundColor: Colors.lightBlue,
          ),
          // BottomNavigationBarItem(
          //   title: Text('Item One'),
          //   icon: Icon(Icons.settings),
          //   backgroundColor: Colors.lightBlue,
          // ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //
      //
      //using this page controller you can make beautiful animation effects
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.easeOut);
    });
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
