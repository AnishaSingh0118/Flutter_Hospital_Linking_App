import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              'Service In Details:',
              style: TextStyle(fontSize: 30.0, color: Colors.green),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'The system comprises 22 emergency rooms,60\n\t\t\t\tambulances and over 500 personnel',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
