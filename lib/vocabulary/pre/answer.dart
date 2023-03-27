import 'package:flutter/material.dart';
 
class Answer extends StatelessWidget {
  final Function()? selectHandler;
  final String answerText;
 
  Answer(this.selectHandler, this.answerText);
 
  @override
  Widget build(BuildContext context) {
     return InkWell(
                onTap: selectHandler,
                  
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                     // color: jogapColor,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      answerText,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ));
    // Container(
    //   width: double.infinity,
    //   child: RaisedButton(
    //     color: Color(0xFF00E676),
    //     textColor: Colors.white,
    //     child: Text(answerText),
    //     onPressed: selectHandler,
    //   ), //RaisedButton
    // ); //Container
  }
}