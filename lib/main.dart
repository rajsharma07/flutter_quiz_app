import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
