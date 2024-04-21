import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/ansbutton.dart';
import 'package:flutter_quiz_app/data/questions_ans.dart';
import 'package:flutter_quiz_app/models/ques_blue.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.answered});
  final void Function(String ans) answered;
  @override
  State<Questions> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Questions> {
  var currentindex = 0;
  void chkans(String ans) {
    widget.answered(ans);
    setState(() {
      currentindex++;
      if(currentindex == ques.length){
        currentindex = 0;
      }
    });
  }

  @override
  Widget build(context) {
    QuizQuestion currentquestion = ques[currentindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentquestion.qtext,
                style: GoogleFonts.lato(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ...currentquestion.getshuffle().map((answer) {
                return AnsButton(answer, () {
                  chkans(answer);
                });
              }),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
