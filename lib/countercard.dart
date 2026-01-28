import 'package:flutter/material.dart';

class Countercard extends StatelessWidget {
  const Countercard({
    super.key,
    required this.title,
    required this.color,
    required this.text,
  });

  final String title;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: const Color.fromARGB(255, 211, 211, 211),
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
            style: IconButton.styleFrom(
backgroundColor: const Color(0xFF4D515D),
            ),
            onPressed: () {},
            icon: Icon(Icons.remove, color: const Color.fromARGB(255, 255, 255, 255)),
          ),       
          SizedBox(width: 10),
             IconButton(
            style: IconButton.styleFrom(
backgroundColor: const Color(0xFF4D515D),
            ),
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white),
          ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
