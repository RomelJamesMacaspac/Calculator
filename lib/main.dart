import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String ans = '';

  void calculate(String x, String y, String op) {
    double a = double.parse(x);
    double b = double.parse(y);
    double answer;
    setState(() {
      switch (op) {
        case '+':
          answer = a + b;
          ans = answer.toString();
        case '-':
          answer = a - b;
          ans = answer.toString();
        case '*':
          answer = a * b;
          ans = answer.toString();
        case '/':
          answer = a / b;
          ans = answer.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Calculator🧮'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ));
    body:
    Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: num1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number:',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number:',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    calculate(num1.text, num2.text, '+');
                  },
                  child: Text('➕')),
              TextButton(
                  onPressed: () {
                    calculate(num1.text, num2.text, '-');
                  },
                  child: Text('➖')),
              TextButton(
                  onPressed: () {
                    calculate(num1.text, num2.text, '*');
                  },
                  child: Text('✖')),
              TextButton(
                  onPressed: () {
                    calculate(num1.text, num2.text, '/');
                  },
                  child: Text('➗')),
            ],
          )
        ],
      ),
    );
  }
}
