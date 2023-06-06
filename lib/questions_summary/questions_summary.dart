import 'package:flutter/material.dart';

import 'package:flutter_quiz/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, String>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (summary) {
              return SummaryItem(summary);
            },
          ).toList(),
        ),
      ),
    );
  }
}
