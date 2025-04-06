import 'package:flutter/material.dart';
import 'package:untitled1/constant/app_colors.dart';

import 'bottom_navigation.dart';
import 'buttons.dart';
import 'options_question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  int selectedOption = -1;
  Set<int> selectedOptions = {};
  final List<Map<String, dynamic>> questions = [
    {
      "question":
          "How would you describe your level of satisfaction with the healthcare system?",
      "options": [
        "Strongly satisfied",
        "Satisfied",
        "Neutral",
        "Not satisfied",
      ],
    },
    {
      "question": "What vitamins do you take?",
      "options": ["Vitamin D3", "Vitamin B", "Zinc", "Magnesium"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1E0B2B), Color(0xFF482E66), Color(0xFF6B478C)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffB8B2FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/qs1.png"),
                      const SizedBox(width: 8),
                      Text(
                        "Question ${currentQuestionIndex + 1}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  questions[currentQuestionIndex]["question"],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                ...List.generate(
                  questions[currentQuestionIndex]["options"].length,
                  (index) => OptionsQuestions(
                    index: index,
                    text: questions[currentQuestionIndex]["options"][index],
                    selectedOptions: [selectedOption],
                    onTap: (int index) {
                      setState(() {
                        if (selectedOptions.contains(index)) {
                          selectedOptions.remove(index);
                        } else {
                          selectedOptions.add(index);
                        }
                      });
                    },
                  ),
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomNavigation(
                      text: "Back",
                      color: Colors.transparent,
                      onPressed: goBack,
                      icon: Icons.arrow_back,
                    ),
                    BottomNavigation(
                      text: "Next",
                      color: Color(0xffB8B2FF),
                      onPressed: goNext,
                      icon: Icons.arrow_forward,
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void goNext() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOption = -1;
      });
    } else {
      showFinishDialog(context);
    }
  }

  void goBack() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
        selectedOption = -1;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("This is first question you can't back")),
      );
    }
  }
}
