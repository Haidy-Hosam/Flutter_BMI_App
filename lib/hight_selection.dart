import 'package:flutter/material.dart';
import 'package:flutter_application/colors.dart';

class HightSelection extends StatelessWidget {
  const HightSelection({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final int height ;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Height',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment
              .baseline, // خليت السم علي نفس سطر الرقم
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 5),
            const Text(
              'cm',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        Slider(
          value: height.toDouble(),
          onChanged: onChanged,
          min: 10,
          max: 250,
          activeColor: AppColors.pinkcard,
          inactiveColor: Colors.grey,
        ),
      ],
    );
  }
}
