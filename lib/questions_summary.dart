import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, String>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (summary) {
              return Row(
                children: [
                  Text(
                    summary['question_index']!,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          summary['question']!,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          summary['user_answer']!,
                        ),
                        Text(
                          summary['correct_answer']!,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
