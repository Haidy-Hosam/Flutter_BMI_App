import 'package:flutter/material.dart';
import 'package:flutter_application/colors.dart';
import 'package:flutter_application/Pages/bmi.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.BMIResult});
  final double BMIResult;

  Widget getClassification() {
    if (BMIResult < 18.5) {
      return Text(
        'Underweight',
        style: TextStyle(fontSize: 24, color: Colors.amberAccent , fontWeight: FontWeight.bold),
      );
    } else if (BMIResult <= 24.9) {
      return Text(
        'Healthy Weight',
        style: TextStyle(fontSize: 24, color: Colors.greenAccent , fontWeight: FontWeight.bold),
      );
    } else if (BMIResult <= 29.9) {
      return Text(
        'Overweight',
        style: TextStyle(fontSize: 24, color: Colors.orangeAccent , fontWeight: FontWeight.bold),
      );
    } else {
      return Text(
        'Obese',
        style: TextStyle(fontSize: 24, color: Colors.redAccent , fontWeight: FontWeight.bold),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Bmi()),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Result',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.graycard,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getClassification(),
                  const SizedBox(height: 20),
                  Text(
                    BMIResult.toStringAsFixed(1),
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
              const SizedBox(height: 20),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.pinkcard,
              minimumSize: const Size(double.infinity, 50),
            ),
            
            onPressed: (){
              Navigator.pop(context);
            }, child: const Text('Re-Calculate' , style: TextStyle(color: AppColors.white),))
          ],
        ),
      ),
    );
  }
}
