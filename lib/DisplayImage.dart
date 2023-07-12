// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  // passing function as a argument
  const DisplayImage(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/img2.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // add transparency to image
          // Opacity(
          //     opacity: 0.5,
          //     child: Image.asset('assets/images/quiz-logo.png', width: 300)),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'OS   Master',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz',style: TextStyle(fontSize: 28),))
        ],
      ),
    );
  }
}
