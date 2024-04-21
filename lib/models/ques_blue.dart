class QuizQuestion{
  const QuizQuestion(this.qtext, this.ans);
  final String qtext;
  final List<String> ans;
  List<String>getshuffle(){
      final sl = List.of(ans);
      sl.shuffle();
      return sl;
  }
}