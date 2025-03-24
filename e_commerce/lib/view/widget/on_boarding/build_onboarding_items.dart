import 'package:flutter/material.dart';

class BuildOnboardingItems extends StatelessWidget {
  const BuildOnboardingItems({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
  });
  final String image;
  final String title;
  final String subtitle;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 150),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Image.asset(image),
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
