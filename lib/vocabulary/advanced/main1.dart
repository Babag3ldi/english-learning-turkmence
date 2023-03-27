import 'package:flutter/material.dart';
 
import './quiz.dart';
import './result.dart';
 
//void main() => runApp(MyApp());
 
class Advan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AdvanState();
  }
}
 
class _AdvanState extends State<Advan> {
  final _questions = const [
    {
      'questionText': 'Q1. Take over',
      'answers': [
        {'text': 'jogapkär', 'score': 0},
        {'text': 'üns bermezlik', 'score': 0},
        {'text': 'ele almak', 'score': 1},
        {'text': 'eldeki', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Based on ',
      'answers': [
        {'text': 'geçelge', 'score': 0},
        {'text': 'kenara golaý', 'score': 0},
        {'text': 'bulam-bujar', 'score': 0},
        {
          'text':
              'görä esaslandyrylan',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q3. Community',
      'answers': [
        {'text': 'dürli', 'score': 0},
        {'text': 'jemgyýet', 'score': 1},
        {'text': 'hereket', 'score': 0},
        {'text': 'janyny almak', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Encounter',
      'answers': [
        {'text': 'duşuşmak', 'score': 1},
        {'text': 'topulmak', 'score': 0},
        {'text': 'zäherlemek', 'score': 0},
        {'text': 'serhoş', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. Hysterical',
      'answers': [
        {
          'text': 'ýaşyl',
          'score': 0,
        },
        {'text': 'joşgun', 'score': 1},
        {'text': 'hbirmeňzeş', 'score': 0},
        {'text': 'zäherlemek', 'score': 0},
      ],
    },
    {
      'questionText': 'Q6. Pinpoint',
      'answers': [
        {'text': 'nahary ýakmak', 'score': 0},
        {'text': 'gelmek', 'score': 0},
        {'text': 'dogry urmak', 'score': 1},
        {'text': 'ýük goýmak', 'score': 0},
      ],
    },
    {
      'questionText': 'Q7. Senseless',
      'answers': [
        {'text': 'äsgermezlik', 'score': 0},
        {'text': 'eserdeňlik', 'score': 0},
        {'text': 'haçan', 'score': 0},
        {
          'text':
              'manysyz',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q8. Usefulness',
      'answers': [
        {'text': 'agyr', 'score': 0},
        {'text': 'peýda', 'score': 1},
        {'text': 'amatly görmek', 'score': 0},
        {'text': 'ýok bolmak', 'score': 0},
      ],
    },
    {
      'questionText': 'Q9. Gamble',
      'answers': [
        {'text': 'humar oýny', 'score': 1},
        {'text': 'injir', 'score': 0},
        {'text': 'işden çykmak', 'score': 0},
        {'text': 'çakmak daşy', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q10. Never mind!',
      'answers': [
        {
          'text': 'hiç haçan',
          'score': 0,
        },
        {'text': 'hökman däl', 'score': 1},
        {'text': 'zäherlemek', 'score': 0},
        {'text': 'tolgunmak', 'score': 0},
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
                            "ADVANCED",
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
                            "ADVANCED",
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
                            "ADVANCED",
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
