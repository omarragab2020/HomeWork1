import 'package:flutter/material.dart';
import 'package:untitled/screens/widgets/personInfo.dart';

import '../widgets/calc.dart';
import '../widgets/gender.dart';
import '../widgets/slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedGender = "Male";
  double selectedHeight = 174;
  int age = 25;
  int weight = 70;

  void calculateBMI() {
    double bmi = weight / ((selectedHeight / 100) * (selectedHeight / 100));
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Your BMI"),
          content: Text("Your BMI is ${bmi.toStringAsFixed(2)}"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03051a),
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff04061d),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      buildGender(
                        gender: 'male',
                        onTap: () {
                          setState(() {
                            selectedGender = 'male';
                          });
                        },
                        selectedGender: selectedGender,
                      ),
                      SizedBox(width: 12),
                      buildGender(
                        gender: 'Female',
                        onTap: () {
                          setState(() {
                            selectedGender = 'Female';
                          });
                        },
                        selectedGender: selectedGender,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ChooseHeight(
                    selectedHeight: selectedHeight,
                    onHeightChanged: (newHeight) {
                      setState(() {
                        selectedHeight = newHeight;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      buildInfoCard(
                        label: "Age",
                        value: age,
                        onIncrement: () {
                          setState(() {
                            age++;
                          });
                        },
                        onDecrement: () {
                          setState(() {
                            if (age > 0) age--;
                          });
                        },
                      ),
                      SizedBox(width: 16),
                      buildInfoCard(
                        label: "Weight",
                        value: weight,
                        onIncrement: () {
                          setState(() {
                            weight++;
                          });
                        },
                        onDecrement: () {
                          setState(() {
                            if (weight > 1) weight--;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: CalculateButton(
              onPressed: () {
                calculateBMI();
              },
            ),
          ),
        ],
      ),
    );
  }
}
