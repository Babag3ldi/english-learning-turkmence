import 'package:flutter/material.dart';
 
import './quiz.dart';
import './result.dart';
 
//void main() => runApp(MyApp());
 
class Elementer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ElementerState();
  }
}
 
class _ElementerState extends State<Elementer> {
  final _questions = const [
    {
      'questionText': 'Q1. Abroad',
      'answers': [
        {'text': 'tiz kömek', 'score': 0},
        {'text': 'tagta', 'score': 0},
        {'text': 'daşary ýurt', 'score': 1},
        {'text': 'bildiriş', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Crown ',
      'answers': [
        {'text': 'reňk', 'score': 0},
        {'text': 'barlag', 'score': 0},
        {'text': 'uçar', 'score': 0},
        {
          'text':
              'täç',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q3. Jump',
      'answers': [
        {'text': 'soňky', 'score': 0},
        {'text': 'bökmek', 'score': 1},
        {'text': 'agaç', 'score': 0},
        {'text': 'signal', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Wolf',
      'answers': [
        {'text': 'möjek', 'score': 1},
        {'text': 'ylgamak', 'score': 0},
        {'text': 'rahatsyz', 'score': 0},
        {'text': 'dört', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. Grass',
      'answers': [
        {
          'text': 'ýaşyl',
          'score': 0,
        },
        {'text': 'ot', 'score': 1},
      ],
    },
    {
      'questionText': 'Q6. Weather',
      'answers': [
        {'text': 'öý', 'score': 0},
        {'text': 'ýagyş', 'score': 0},
        {'text': 'howa', 'score': 1},
        {'text': 'talyp', 'score': 0},
      ],
    },
    {
      'questionText': 'Q7. Umbrella',
      'answers': [
        {'text': 'gitar', 'score': 0},
        {'text': 'deňemek', 'score': 0},
        {'text': 'haçan', 'score': 0},
        {
          'text':
              'saýawan',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q8. Size',
      'answers': [
        {'text': 'näçe', 'score': 0},
        {'text': 'ölçeg', 'score': 1},
        {'text': 'sport', 'score': 0},
        {'text': 'ýyldyz', 'score': 0},
      ],
    },
    {
      'questionText': 'Q9. Fresh',
      'answers': [
        {'text': 'ter', 'score': 1},
        {'text': 'saç', 'score': 0},
        {'text': 'gül', 'score': 0},
        {'text': 'ýurt', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q10. Often',
      'answers': [
        {
          'text': 'hiç haçan',
          'score': 0,
        },
        {'text': 'köplenç', 'score': 1},
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
                            "ELEMENTARY",
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
                            "ELEMENTARY",
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
                            "ELEMENTARY",
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
