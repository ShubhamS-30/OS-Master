import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What is an operating system?',
    [
      'all of the mentioned',
      'interface between the hardware and application programs',
      'collection of programs that manages hardware resources',
      ' system service provider to the application programs',
    ],
  ),
  QuizQuestion('CPU scheduling is the basis of ', [
    'multiprogramming operating systems',
    'larger memory sized systems',
    'multiprocessor systems',
    'none of the mentioned',
  ]),
  QuizQuestion(
    'In operating system, each process has its own',
    [
      'all of the mentioned',
      'User address space and global variables',
      'pending alarms, signals, and signal handlers',
      'open files',
    ],
  ),
  QuizQuestion(
    ' A process which is copied from main memory to secondary memory on the basis of requirement is known as',
    [
      'Demand Paging',
      'Paging',
      'Threads',
      'Segmentation',
    ],
  ),
  QuizQuestion(
    'The FCFS algorithm is particularly troublesome for',
    [
      'time sharing systems',
      'multiprogramming systems',
      'multiprocessor systems',
      ' operating systems',
    ],
  ),
  QuizQuestion(
    'Cascading termination refers to the termination of all child processes if the parent process terminates ',
    [
      ' Normally or abnormally',
      'Abnormally',
      'Normally',
      'None of the mentioned',
    ],
  ),
  QuizQuestion(
    'A systematic procedure for moving the CPU to new process is known as',
    [
      'Context Switching',
      'Synchronization',
      'Deadlock',
      'Starvation',
    ],
  ),
  QuizQuestion(
    'What is meant by ready state of a process?',
    [
      'the process has all necessary resources which are required for execution',
      'When the process is currently using the CPU',
      'Process is scheduled to run after some execution time',
      'None of these',
    ],
  ),
  QuizQuestion(
    'How many minimum variables is/are required to share between processes, so as to solve the critical section problem?',
    [
      'two',
      'one',
      'three',
      'None of these',
    ],
  ),
  QuizQuestion(
    'The size of virtual memory is based on which of the following?',
    [
      'Address Bus',
      'CPU',
      'RAM',
      'Data Bus',
    ],
  ),
];

