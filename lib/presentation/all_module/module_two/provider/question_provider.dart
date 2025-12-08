import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

import '../view_model/question.dart';

// Question list
final questionsProvider = Provider<List<Question>>((ref) {
  return [
    Question(
      question: "What is Flutter?",
      options: ["SDK", "Programming Language", "IDE"],
    ),
    Question(
      question: "Who developed Flutter?",
      options: ["Apple", "Google", "Microsoft"],
    ),
    Question(
      question: "Which language does Flutter use?",
      options: ["Java", "Kotlin", "Dart"],
    ),
  ];
});

// Current question index
final currentQuestionIndexProvider = StateProvider<int>((ref) => 0);

// Selected answer
final selectedOptionProvider = StateProvider<int?>((ref) => null);
