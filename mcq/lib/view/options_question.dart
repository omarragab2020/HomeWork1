import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class OptionsQuestions extends StatefulWidget {
  const OptionsQuestions({
    super.key,
    required this.index,
    required this.text,
    required this.selectedOptions,
    required this.onTap,
  });
  final int index;
  final String text;
  final List<int> selectedOptions;
  final Function(int) onTap;

  @override
  State<OptionsQuestions> createState() => _OptionsQuestionsState();
}

class _OptionsQuestionsState extends State<OptionsQuestions> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.selectedOptions.contains(widget.index);
    Widget icon;

    if (isSelected && widget.selectedOptions.length == 1) {
      icon = CircleAvatar(
        radius: 12,
        backgroundColor: AppColors.mainAppColor,
        child: Image.asset('assets/images/Icon.png'),
      );
    } else if (isSelected && widget.selectedOptions.length > 1) {
      icon = CircleAvatar(
        radius: 12,
        child: Image.asset('assets/images/CHECK B.png'),
      );
    } else {
      icon = const Icon(Icons.radio_button_off, color: Colors.grey);
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            widget.selectedOptions.remove(widget.index);
          } else {
            widget.selectedOptions.add(widget.index);
          }
        });
      },

      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffB8B2FF) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.deepPurpleAccent : Colors.white54,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              widget.text,
              style: TextStyle(color: AppColors.mainAppColor, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
