import 'package:flutter/material.dart';

class ResultIcon extends StatelessWidget {
  const ResultIcon({Key? key, required this.tuuraIconbu}) : super(key: key);
  final bool tuuraIconbu;

  @override
  Widget build(BuildContext context) {
    return Icon(
      tuuraIconbu ? Icons.check : Icons.close,
      color: tuuraIconbu ? Colors.green : Colors.red,
    );
  }
}
