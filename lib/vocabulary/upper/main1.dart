import 'package:flutter/material.dart';
 
import './quiz.dart';
import './result.dart';
 
//void main() => runApp(MyApp());
 
class Upper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UpperState();
  }
}
 
class _UpperState extends State<Upper> {
  final _questions = const [
    {
      'questionText': 'Q1. Bum',
      'answers': [
        {'text': 'kiçi dogan', 'score': 0},
        {'text': 'bilezik', 'score': 0},
        {'text': 'sergezdan', 'score': 1},
        {'text': 'özgertmek', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Home-made ',
      'answers': [
        {'text': 'öwrenje', 'score': 0},
        {'text': 'ukyply', 'score': 0},
        {'text': 'öýsüz', 'score': 0},
        {
          'text':
              'öýde öndürilen',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q3. Rain drop',
      'answers': [
        {'text': 'penje', 'score': 0},
        {'text': 'ýagyş damja', 'score': 1},
        {'text': 'ýeňil kelle', 'score': 0},
        {'text': 'azat etmek', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Steamy',
      'answers': [
        {'text': 'bugly', 'score': 1},
        {'text': 'ylgamak', 'score': 0},
        {'text': 'galam', 'score': 0},
        {'text': 'at ýatak', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. Blue',
      'answers': [
        {
          'text': 'ýaşyl',
          'score': 0,
        },
        {'text': 'gök', 'score': 1},
        {'text': 'öý', 'score': 0},
        {'text': 'öý', 'score': 0},
      ],
    },
    {
      'questionText': 'Q6. Well of',
      'answers': [
        {'text': 'terk etmek', 'score': 0},
        {'text': 'gelmek', 'score': 0},
        {'text': 'gurply', 'score': 1},
        {'text': 'ýabany', 'score': 0},
      ],
    },
    {
      'questionText': 'Q7. Breath',
      'answers': [
        {'text': 'pul goýmak', 'score': 0},
        {'text': 'talyp', 'score': 0},
        {'text': 'jaýlamak', 'score': 0},
        {
          'text':
              'dem',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q8. Display',
      'answers': [
        {'text': 'günäli', 'score': 0},
        {'text': 'görkezmek', 'score': 1},
        {'text': 'barlagçy', 'score': 0},
        {'text': 'ot ormak', 'score': 0},
      ],
    },
    {
      'questionText': 'Q9. Librarian',
      'answers': [
        {'text': 'kitaphanaçy', 'score': 1},
        {'text': 'işgär', 'score': 0},
        {'text': 'gül ösdirmek', 'score': 0},
        {'text': 'hüjüm etmek', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q10. put sb up',
      'answers': [
        {
          'text': 'hiç haçan',
          'score': 0,
        },
        {'text': 'myhman almak', 'score': 1},
        {'text': 'ýola çykmak', 'score': 0},
        {'text': 'öýde galmak', 'score': 0},
      ],
    },
  ];
 
  var _questionIndex = 0;
  var _totalScore = 0;
 
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
 
  void _answerQuestion(int score) {
    _totalScore += score;
 
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text('Quiz App'),
        //   backgroundColor: Color(0xFF00E676),
        // ),
        body: Column(
          children: [
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
                            "UPPER-INTERMEDIATE",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.lightBlue, Colors.lightBlueAccent.shade400])),
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
                            "UPPER-INTERMEDIATE",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.cyanAccent , Colors.cyan])),
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
                            "UPPER-INTERMEDIATE",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.lightBlueAccent.withOpacity(1.0)])),
                    ),
                  ),
                ],
              ),
          
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  ) //Quiz
                : Result(_totalScore, _resetQuiz),
          ),
           ],
        ),
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
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
