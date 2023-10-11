import 'package:flutter/material.dart';
//import 'package:adv_basics/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Opacity(
            opacity: 0.5,
            child: Image(
              image: AssetImage('assets/images/ideas.png'),
              width: 400,
              //color: Color.fromARGB(30, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Welcome to the Quiz App!',
            style: TextStyle(
              color: Color.fromARGB(255, 221, 166, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              shape: const StadiumBorder(),
            ),
            label: const Text('Take Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
