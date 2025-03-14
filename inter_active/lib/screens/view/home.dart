import 'dart:math';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final List<List<Color>> gradientColors = [
    [Color(0xFF6A85B6), Color(0xFFBAC8E0)],
    [Color(0xFFFFA726), Color(0xFFFFECB3)],
    [Color(0xFFEC407A), Color(0xFFFFCDD2)],
    [Color(0xFF8E24AA), Color(0xFFE1BEE7)],
  ];

  int counter = 19;
  double textSize = 20.0;
  int currentGradientIndex = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void changeColor() {
    setState(() {
      currentGradientIndex = (currentGradientIndex + 1) % gradientColors.length;
    });
  }

  void changeTextSize() {
    setState(() {
      textSize = (textSize == 20) ? 30 : 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors[currentGradientIndex],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Interactive UI Demo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 150),

              Container(
                width: 150,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: gradientColors[currentGradientIndex][0],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  counter % 2 == 0 ? "Even: $counter" : "Odd: $counter",
                  style: TextStyle(color: Colors.white, fontSize: textSize),
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                "Counter Value",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: changeColor,
                    icon: const Icon(Icons.color_lens),
                    label: const Text("Change Color"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: gradientColors[currentGradientIndex][0],
                      foregroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: changeTextSize,
                    icon: const Icon(Icons.text_increase),
                    label: const Text("Change Size"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: gradientColors[currentGradientIndex][0],
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton.icon(
          onPressed: incrementCounter,
          icon: const Icon(Icons.add, color: Colors.white),
          label: const Text(
            "Increment",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: gradientColors[currentGradientIndex][0],
          ),
        ),
      ),
    );
  }
}
