import 'package:flutter/material.dart';
 
import './quiz.dart';
import './result.dart';
 
//void main() => runApp(MyApp());
 
class Inter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InterState();
  }
}
 
class _InterState extends State<Inter> {
  final _questions = const [
    {
      'questionText': 'Q1. Bright',
      'answers': [
        {'text': 'ötünç soramak', 'score': 0},
        {'text': 'mukdar', 'score': 0},
        {'text': 'öwüşgin', 'score': 1},
        {'text': 'kebelek', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Afford ',
      'answers': [
        {'text': 'kimdir biri', 'score': 0},
        {'text': 'täsin', 'score': 0},
        {'text': 'meşhur adam', 'score': 0},
        {
          'text':
              'üpjin etmek',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q3. Corn',
      'answers': [
        {'text': 'kiçi reklama', 'score': 0},
        {'text': 'mekgejöwen', 'score': 1},
        {'text': 'agaç', 'score': 0},
        {'text': 'doly iş güni', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Mankind',
      'answers': [
        {'text': 'adamzad', 'score': 1},
        {'text': 'aş-bilim', 'score': 0},
        {'text': 'ýokarlanmak', 'score': 0},
        {'text': 'aladaly', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. leap',
      'answers': [
        {
          'text': 'ýadro ýaragy',
          'score': 0,
        },
        {'text': 'towusmak', 'score': 1},
        {'text': 'göni baglanşyk', 'score': 0},
        {'text': 'hajathana', 'score': 0},
      ],
    },
    {
      'questionText': 'Q6. Popcorn',
      'answers': [
        {'text': 'nur saçmak', 'score': 0},
        {'text': 'halas etmek', 'score': 0},
        {'text': 'patrak', 'score': 1},
        {'text': 'gögermek', 'score': 0},
      ],
    },
    {
      'questionText': 'Q7. Take part',
      'answers': [
        {'text': 'suwda geýilýän geýim', 'score': 0},
        {'text': 'tekst okamak', 'score': 0},
        {'text': 'ulanyjy', 'score': 0},
        {
          'text':
              'gatnaşmak',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q8. Deep',
      'answers': [
        {'text': 'onluk', 'score': 0},
        {'text': 'çuň', 'score': 1},
        {'text': 'futbol meýdança', 'score': 0},
        {'text': 'ýadawsuz', 'score': 0},
      ],
    },
    {
      'questionText': 'Q9. Lawyer',
      'answers': [
        {'text': 'aklawçy', 'score': 1},
        {'text': 'öý bezegçisi', 'score': 0},
        {'text': 'nika', 'score': 0},
        {'text': 'ýurt', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q10. Tell a lie',
      'answers': [
        {
          'text': 'hiç haçan',
          'score': 0,
        },
        {'text': 'ýalan sözlemek', 'score': 1},
        {'text': 'şäher çeti', 'score': 0},
        {'text': 'hassa', 'score': 0},
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
                            "INTERMEDIATE",
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
                            "INTERMEDIATE",
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
                            "INTERMEDIATE",
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
