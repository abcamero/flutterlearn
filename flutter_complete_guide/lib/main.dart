import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './lefrdrawer.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>
{
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex  + 1; 
    });
  
    
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText' : 'What\'s your favourite color',
        'answers' : ['Black','White','Adrak','Lasan'],
      },
      {
        'questionText' : 'What\'s your fav animal',
        'answers' : ['Black Buck','White Tiger','Adrak','Lasan'],        
      },

    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 13, 12),
        appBar: AppBar(
          title: Text('Whatsaap'),
           backgroundColor: Color.fromARGB(255, 42, 192, 57),
          ),
          body: Column(
            children: [
              Questions(questions[questionIndex]['questionText']),
              ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
                return Answer(answerQuestion, answer);
              }).toList(),   
            ],
          ),
          drawer: Drawerleft()           
)
    );
  }
}
