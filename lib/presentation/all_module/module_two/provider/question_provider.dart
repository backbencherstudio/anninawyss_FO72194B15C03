import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

import '../view_model/question.dart';

// Question list
final questionsProvider = Provider<List<Question>>((ref) {
  return [
    Question(
      question: "Do you often feel that you are never “enough,” no matter what you do?",
      options: ["1. Yes, constantly", "2. Sometimes", "3. No, rarely"],
    ),
    Question(
      question: "Does your partner switch between extreme affection and devaluation (e.g., loving today, cold or hurtful tomorrow)?",
      options: ["1. Yes, very often", "2. Occasionally", "3. No, mostly consistent"],
    ),
    Question(
      question: "Have you experienced your perception or memory being questioned (“I never said that,” “You’re just imagining it”)?",
      options: ["1. Yes, regularly", "2. Sometimes", "3. No, never"],
    ),

    Question(
      question: "Do you feel guilty when you express your own needs or set boundaries?",
      options: ["1. Yes, almost always", "2. Sometimes", "3. No, rarely"],
    ),

    Question(
      question: "Do you feel that your feelings or achievements are downplayed or ridiculed?",
      options: ["1. Yes, frequently", "2. Occasionally", "3. No, never"],
    ),

    Question(
      question: "Are you afraid of your partner’s reaction when you voice your opinion or make a decision?",
      options: ["1. Yes, very often", "2. Sometimes", "3. No, hardly ever"],
    ),

    Question(
      question: "Do you constantly try to please your partner to avoid conflict or criticism?",
      options: ["1. Yes, almost always", "2. Sometimes", "3. No, rarely"],
    ),

    Question(
      question: "Do you feel that you have neglected your own values, friends, or interests to maintain the relationship?",
      options: ["1. Yes, significantly", "2. Partly", "3. No, not at all"],
    ),

    Question(
      question: "Do you feel emotionally drained or empty inside after conversations or conflicts with your partner?",
      options: ["1. Yes, very often", "2. Sometimes", "3. No, hardly ever"],
    ),

    Question(
      question: "Are you often held responsible for things you didn’t do?",
      options: ["1. Yes, constantly", "2. Occasionally", "3. No, never"],
    ),

    Question(
      question: "Do you experience your boundaries not being respected (e.g., privacy, physical closeness, time for yourself)?",
      options: ["1. Yes, regularly", "2. Sometimes", "3. No, never"],
    ),
     Question(
      question: "Do you feel like you have lost yourself or no longer know who you really are?",
      options: ["1. Yes, very strongly", "2. Partly", "3. No, not at all"],
    ),
     Question(
      question: "Does the thought of ending the relationship make you very afraid, even if you are unhappy?",
      options: ["1. Yes, very much", "2. A little", "3. No, hardly"],
    ),
     Question(
      question: "Have you experienced your partner trying to isolate you from important people (family, friends)?",
      options: ["1. Yes, clearly", "2. Partly", "3. No, never"],
    ),
     Question(
      question: "Do you feel like you often have to explain or justify yourself – even for small things?",
      options: ["1. Yes, very often", "2. Sometimes", "3. No, hardly ever"],
    ),
  ];
});

// Current question index
final currentQuestionIndexProvider = StateProvider<int>((ref) => 0);

// Selected answer
final selectedOptionProvider = StateProvider<int?>((ref) => null);
