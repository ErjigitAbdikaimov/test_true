import 'package:flutter/material.dart';
import 'package:test_true/model/quiz_model.dart';
import 'package:test_true/widgets/icon.dart';
import 'package:test_true/widgets/quiz_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuurajoop = <bool>[];
  List katajoop = <bool>[];

  void teksher(bool value) {
    if (quizess[index].answer == value) {
      jooptor.add(true);
      tuurajoop.add(true);
    } else {
      jooptor.add(false);
      katajoop.add(false);
    }

    setState(() {
      if (quizess[index] == quizess.last) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('сиз бул тесттен.....'),
                content: Text(
                    'туура жооптор${tuurajoop.length}. ката жооптор${katajoop.length}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                        jooptor.clear();
                        tuurajoop.clear();
                        katajoop.clear();
                        Navigator.pop(context);
                      });
                    },
                    child: const Text('жаныдан баштоо'),
                  ),
                ],
              );
            });
        index = 0;
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма-07',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizess[index].Question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            QuizButton(
              tuuraButtonBu: true,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            QuizButton(
              tuuraButtonBu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: jooptor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return jooptor[i]
                        ? const ResultIcon(tuuraIconbu: true)
                        : const ResultIcon(tuuraIconbu: false);
                  }),
            )
            // Row(
            //   children: const [
            //     ResultIcon(tuuraIconbu: true),
            //     ResultIcon(tuuraIconbu: false),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
