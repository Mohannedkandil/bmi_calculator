import 'package:flutter/material.dart';
class BMIResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    @required this.result,
    @required this.isMale,
    @required this.age,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 33, 71, 0.5),
      appBar: AppBar(
        title: Text(
            'BMI Result',
        ),
        backgroundColor: Color.fromRGBO(151, 178, 222, 0.3),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : ${result.round()}',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),

    );
  }
}
