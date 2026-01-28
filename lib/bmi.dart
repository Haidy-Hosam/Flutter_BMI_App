import 'package:flutter/material.dart';
import 'package:flutter_application/card.dart';
import 'package:flutter_application/colors.dart';
import 'package:flutter_application/countercard.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment
                          .baseline, // خليت السم علي نفس سطر الرقم
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '180',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'cm',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    Slider(
                      value: 180,
                      onChanged: (value) {},
                      min: 80,
                      max: 250,
                      activeColor: AppColors.pinkcard,
                      inactiveColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Countercard(
                            title: 'Weight',
                            color: AppColors.graycard,
                            text: "50",
                          ),
                          Countercard(title: 'Age', color: AppColors.graycard , text: "25",),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
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
