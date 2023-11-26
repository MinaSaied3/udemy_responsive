import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //const CounterScreen({Key? key}) : super(key: key);
  int counter = 1 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),

      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: ()
            {
              setState(() {
                counter--;
                print(counter);
              });
            },
              child: Text('Minus'),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(onPressed: ()
            {
              setState(() {
                counter++;
                print(counter);
              });
            },
              child: Text('Plus'),),

          ],
        ),
      ),
    );
  }
}
