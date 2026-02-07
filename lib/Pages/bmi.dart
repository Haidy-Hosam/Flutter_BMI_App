import 'package:flutter/material.dart';
import 'package:flutter_application/card.dart';
import 'package:flutter_application/colors.dart';
import 'package:flutter_application/countercard.dart';
import 'package:flutter_application/hight_selection.dart';
import 'package:flutter_application/Pages/result_page.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int height = 100;
  int weight = 30;
  int age = 10;
  double BMIResult = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.local_pizza_sharp, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text('BmiDex', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  AppCard(
                    title: 'Male',
                    icon: Icons.male,
                    color: AppColors.graycard,
                  ),
                  AppCard(
                    title: 'Female',
                    icon: Icons.female,
                    color: AppColors.pinkcard,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.graycard,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10),
                child: HightSelection(
                  height: height,
                  onChanged: (newHeight) {
                    setState(() {
                      height = newHeight.toInt();
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Countercard(
                          title: 'Weight',
                          color: AppColors.graycard,
                          text: weight.toString(),
                          value: weight,
                          onAdd: () {
                            setState(() {
                              weight++;
                            });
                          },
                          onRemove: () {
                            setState(() {
                              if (weight > 0) {
                                weight--;
                              }
                            });
                          },
                        ),
                        Countercard(
                          title: 'Age',
                          color: AppColors.graycard,
                          text: age.toString(),
                          value: age,
                          onAdd: () {
                            setState(() {
                              age++;
                            });
                          },
                          onRemove: () {
                            setState(() {
                              if (age > 0) {
                                age--;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                BMIResult = weight / ((height / 100) * (height / 100));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(BMIResult: BMIResult),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.pinkcard,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
