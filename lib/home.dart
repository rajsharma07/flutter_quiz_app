import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome(this.start,{super.key});
  final void Function() start;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/Quiz_img.jpg",
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          label: const Text(
            "Ready???",
            style: TextStyle(color: Color.fromARGB(255, 184, 169, 209)),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
          ),
          onPressed: start,
        )
      ],
    );
  }
}
