import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/question_provider.dart';


class QuestionScreen extends ConsumerWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionsProvider);
    final index = ref.watch(currentQuestionIndexProvider);
    final selectedOption = ref.watch(selectedOptionProvider);

    final currentQuestion = questions[index];

    return Scaffold(
      appBar: AppBar(title: const Text("Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question ${index + 1} / ${questions.length}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Text(
              currentQuestion.question,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            ...List.generate(currentQuestion.options.length, (i) {
              return GestureDetector(
                onTap: () {
                  ref.read(selectedOptionProvider.notifier).state = i;
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: selectedOption == i
                        ? Colors.blue.shade100
                        : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(currentQuestion.options[i]),
                ),
              );
            }),

            const Spacer(),

            ElevatedButton(
              onPressed: selectedOption == null
                  ? null
                  : () {
                if (index < questions.length - 1) {
                  ref
                      .read(currentQuestionIndexProvider.notifier)
                      .state++;
                  ref
                      .read(selectedOptionProvider.notifier)
                      .state = null;
                } else {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => const ResultScreen(),
                  //   ),
                  // );
                }
              },
              child: const Text("Next"),
            )
          ],
        ),
      ),
    );
  }
}
