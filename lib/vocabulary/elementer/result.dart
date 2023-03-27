import 'package:flutter/material.dart';

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


class Result extends StatelessWidget {
  final int resultScore;
  final Function()? resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 10) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 7) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 4) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "images/Result.jpg",
            height: 250,
            width: 250,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          // FlatButton(
          //   child: Text(
          //     'Restart Quiz!',
          //   ), //Text
          //   textColor: Colors.blue,
          //   onPressed: resetHandler,
          // ), //FlatButton
          SizedBox(height: 40,),
    //       Container(
    //   width: double.infinity,
    //   child: RaisedButton(
    //     color: Color(0xFF00E676),
    //     textColor: Colors.white,
    //     child: Text("Restart Quiz!"),
    //     onPressed: resetHandler,
    //   ), //RaisedButton
    // ) //Container
      ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    onPrimary: '#fff'.toColor(),
                    shadowColor: Colors.lightBlueAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minimumSize: Size(330, 50), //////// HERE
            ),
            onPressed: resetHandler,
            child: Text('Restart Quiz!', style: TextStyle(fontSize: 17),),
          )
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
