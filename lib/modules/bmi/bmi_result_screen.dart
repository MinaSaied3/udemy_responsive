import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
 //const BMIResultScreen({Key? key}) : super(key: key);
  final int result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    @required this.result=50,
    @required this.isMale=true,
    @required this.age=20,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result',
        ),


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale ? 'Male' : 'Female'}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            Text('Result : $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
            Text('Age : $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
    );
  }
}
