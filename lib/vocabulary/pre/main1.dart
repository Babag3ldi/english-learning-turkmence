import 'package:flutter/material.dart';
 
import './quiz.dart';
import './result.dart';
 
//void main() => runApp(MyApp());
 
class Pre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PreState();
  }
}
 
class _PreState extends State<Pre> {
  final _questions = const [
    {
      'questionText': 'Q1. Habit',
      'answers': [
        {'text': 'şat', 'score': 0},
        {'text': 'eşitmek', 'score': 0},
        {'text': 'endik', 'score': 1},
        {'text': 'döwlet', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Future ',
      'answers': [
        {'text': 'tapmak', 'score': 0},
        {'text': 'haýsy', 'score': 0},
        {'text': 'myhman', 'score': 0},
        {
          'text':
              'geljek',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q3. Enjoy',
      'answers': [
        {'text': 'derýa', 'score': 0},
        {'text': 'şatlanmak', 'score': 1},
        {'text': 'unutmak', 'score': 0},
        {'text': 'hatda', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Dream',
      'answers': [
        {'text': 'arzuw', 'score': 1},
        {'text': 'ylgamak', 'score': 0},
        {'text': 'aşaky', 'score': 0},
        {'text': 'düşündiriş', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. Employ',
      'answers': [
        {
          'text': 'hezil',
          'score': 0,
        },
        {'text': 'iş bermek', 'score': 1},
        {'text': 'fabrik', 'score': 0},
        {'text': 'çeker', 'score': 0},
      ],
    },
    {
      'questionText': 'Q6. Carry',
      'answers': [
        {'text': 'öý', 'score': 0},
        {'text': 'jenaýat', 'score': 0},
        {'text': 'daşamak', 'score': 1},
        {'text': 'enjam', 'score': 0},
      ],
    },
    {
      'questionText': 'Q7. Breake',
      'answers': [
        {'text': 'jaň etmek', 'score': 0},
        {'text': 'diş ýuwmak', 'score': 0},
        {'text': 'haçan', 'score': 0},
        {
          'text':
              'döwmek',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q8. Advice',
      'answers': [
        {'text': 'ynanmak', 'score': 0},
        {'text': 'maslahat', 'score': 1},
        {'text': 'gol', 'score': 0},
        {'text': 'ýaragly', 'score': 0},
      ],
    },
    {
      'questionText': 'Q9. World',
      'answers': [
        {'text': 'dünýä', 'score': 1},
        {'text': 'san', 'score': 0},
        {'text': 'gül', 'score': 0},
        {'text': 'ýurt', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q10. Uniform',
      'answers': [
        {
          'text': 'hiç haçan',
          'score': 0,
        },
        {'text': 'ýörite geýim', 'score': 1},
        {'text': 'ýörite adam', 'score': 0},
        {'text': 'kirli', 'score': 0},
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
                            "PRE-INTERMEDIATE",
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
                            "PRE-INTERMEDIATE",
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
                            "PRE-INTERMEDIATE",
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
