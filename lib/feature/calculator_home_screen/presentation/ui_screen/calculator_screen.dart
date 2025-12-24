import 'package:flutter/material.dart';
import 'package:singlescreencalc/feature/calculator_home_screen/presentation/components/custom_buttom.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String displayValue = '0';

  void onNumberPressed(String value) {
    setState(() {
      displayValue = value;
    });
  }

  void onClearPressed() {
    setState(() {
      displayValue = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Single Screen App Design",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                alignment: Alignment.bottomRight,
                child: Text(
                  displayValue,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.0,
                  children: [
                    CalculatorButton(
                      text: 'C',
                      color: Colors.redAccent,
                      onTap: onClearPressed,
                    ),
                    const CalculatorButton(text: '', color: Colors.transparent),
                    const CalculatorButton(text: '', color: Colors.transparent),
                    const CalculatorButton(text: '/'), 

                    CalculatorButton(text: '7', onTap: () => onNumberPressed('7')),
                    CalculatorButton(text: '8', onTap: () => onNumberPressed('8')),
                    CalculatorButton(text: '9', onTap: () => onNumberPressed('9')),
                    const CalculatorButton(text: '*'), 

                    CalculatorButton(text: '4', onTap: () => onNumberPressed('4')),
                    CalculatorButton(text: '5', onTap: () => onNumberPressed('5')),
                    CalculatorButton(text: '6', onTap: () => onNumberPressed('6')),
                    const CalculatorButton(text: '-'), 

                    CalculatorButton(text: '1', onTap: () => onNumberPressed('1')),
                    CalculatorButton(text: '2', onTap: () => onNumberPressed('2')),
                    CalculatorButton(text: '3', onTap: () => onNumberPressed('3')),
                    const CalculatorButton(text: '+'),

                    CalculatorButton(text: '0', onTap: () => onNumberPressed('0')),
                    const CalculatorButton(text: '.'), 
                    const CalculatorButton(
                      text: '=', 
                      color: Colors.orange, 
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}