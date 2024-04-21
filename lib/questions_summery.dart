
import 'package:flutter/material.dart';

class QuestionsSummery extends StatelessWidget {
  const QuestionsSummery(this.data, {super.key});
  final List<Map<String, Object>> data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: data.map((i) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: i['correctans'] == i['userans']
                      ? Colors.blueAccent
                      : Colors.redAccent,
                  child: Text(
                    (i["index"] as int).toString(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        i["Question"] as String,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        i["correctans"] as String,
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(i["userans"] as String),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
