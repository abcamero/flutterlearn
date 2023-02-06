import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
  return MyAppState();
  }

}



class MyAppState extends State<MyApp>
{
  var questionIndex = 0;
  
  get obj => Drawerleft();
  void answerQuestion() {
    setState(() {
      if(questionIndex < 1)
      {
        questionIndex = questionIndex  + 1;
      }
       
    });
  
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
  /*var questions = [
      {
        'questionText' : 'What\'s your favourite color',
        'answers' : ['Black','White','Adrak','Lasan'],
      },
      {
        'questionText' : 'What\'s your fav animal',
        'answers' : ['Black Buck','White Tiger','Adrak','Lasan'],        
      },
 

    ];
     */
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 214, 209),
        appBar: AppBar(
          title: Text('Get My Law'),
           backgroundColor: Color.fromARGB(255, 41, 102, 193),
          ),
          body: Column(
          children: [
            /*Questions(questions[questionIndex]['questionText']),
              ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
                return Answer(answerQuestion, answer);
              }).toList(),  */ 
              ElevatedButton(onPressed: () {obj.launchURLApp();} , child: const Text('Visit Site'))
            ],
            /*children: [
              Text("Welcome to Get my Law"),
              TextButton(onPressed: obj.launchURLApp(), child: Text('Visit Law Site'))
            ],*/
          ),
          drawer: Drawerleft()          
)
    );
  }
}
