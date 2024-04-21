import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/home.dart';
import 'package:flutter_quiz_app/questions.dart';
import 'package:flutter_quiz_app/data/questions_ans.dart';
import 'package:flutter_quiz_app/result.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizContent();
  }
}

class _QuizContent extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? activescreen;
  @override
  void initState() {
    activescreen = Myhome(changeScreen);
    super.initState();
  }
  void changeScreen() {
    setState(() {
      activescreen = Questions(answered: answered,);
    });
  }
  void restartquiz(){
    setState(() {
      selectedAnswer = [];
      activescreen = Questions(answered: answered);
    });
  }
  void answered(String ans){
      selectedAnswer.add(ans);
      if(selectedAnswer.length == ques.length){
        setState(() { 
        activescreen = Result(restartquiz,chosenanswers:selectedAnswer);
        });
        selectedAnswer = [];
      }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "YOYO Quiz",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Welcome to Quiz")),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 20, 6, 67)
            ]),
          ),
          child: Center(
            child: activescreen,
          ),
        ),
      ),
    );
  }
}
