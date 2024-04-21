import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AnsButton extends StatelessWidget {
  AnsButton(this.a, this.anfunc, {super.key});
  String a;
  void Function() anfunc;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 41, 23, 95),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: anfunc,
        child: Text(
          a,
          style: GoogleFonts.lato(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
