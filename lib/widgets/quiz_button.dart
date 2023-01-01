import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  QuizButton({Key? key, required this.tuuraButtonBu, required this.baskanda})
      : super(key: key);

  final bool tuuraButtonBu;
  final void Function(bool)? baskanda;

  @override
  Widget build(BuildContext context) {
    // if (tuuraButtonBu) {
    //   'туура';
    // } else {
    //   'туура эмес';
    // }
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => baskanda!(tuuraButtonBu),
        style: ElevatedButton.styleFrom(
            backgroundColor: tuuraButtonBu ? Colors.green : Colors.red),
        child: Text(
          tuuraButtonBu ? 'туура' : 'туура эмес',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
