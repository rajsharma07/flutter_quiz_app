import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions_ans.dart';
import 'package:flutter_quiz_app/questions_summery.dart';
class Result extends StatelessWidget {
  const Result(this.changepage,{super.key, required this.chosenanswers});

  final List<String>chosenanswers;
  final Function() changepage;
  List<Map<String, Object>> summerygenerater(){
    List<Map<String, Object>>summery = [];
    for(var i = 0 ; i<chosenanswers.length; i++){
      summery.add({
        "index":i+1,
        "Question": ques[i].qtext,
        "correctans":ques[i].ans[0],
        "userans":chosenanswers[i]
      });
    }
    return summery;
  }


  @override
  Widget build(BuildContext context) {
    final summerydata = summerygenerater();
    final numTotal = ques.length;
    final numcorrect = summerydata.where((d){
      return d['correctans'] == d['userans'];
    }).length;
    return SizedBox(
      width: double.infinity,
  child: Container(
          margin: const EdgeInsets.all(10),
          
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$numcorrect out of $numTotal answered correctly",style: const TextStyle(fontSize: 30),),
              const SizedBox(
                height: 20,
              ),
              QuestionsSummery(summerygenerater()),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  changepage();
                },
                child: const Text("Restart"),
              )
            ],
          ),
        ),
      );
  }
}
