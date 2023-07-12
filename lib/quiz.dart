import 'package:flutter/material.dart';
import 'package:quiz_app/models/data/questions.dart';
import 'package:quiz_app/questions.dart';
import 'DisplayImage.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start';
  List<String> selectedAnswers = [];
  // does initialization tasks
  // executed only once
  // @override
  // void initState() {
  //   activeScreen = DisplayImage(switchScreen);
  //   super.initState();
  // }
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = DisplayImage(switchScreen);
    if (activeScreen == 'questions') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 41, 36, 36),
                  Color.fromARGB(255, 205, 111, 82),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget),
      ),
    );
  }
}

// ternary operators
// variable == value ?  if_true_value : if_false_value;
