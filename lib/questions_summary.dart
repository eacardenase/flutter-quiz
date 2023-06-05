import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, String>> summaryData;

  final Color correctAnswerColor = Colors.cyanAccent;
  final Color userAnswerColor = Colors.pinkAccent;

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
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          30,
                        ),
                      ),
                      color: summary['user_answer'] == summary['correct_answer']
                          ? correctAnswerColor
                          : userAnswerColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          summary['question_index']!,
                          style: GoogleFonts.lato(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          summary['question']!,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          summary['user_answer']!,
                          style: GoogleFonts.lato(
                            color: userAnswerColor,
                          ),
                        ),
                        Text(
                          summary['correct_answer']!,
                          style: GoogleFonts.lato(
                            color: correctAnswerColor,
                          ),
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
