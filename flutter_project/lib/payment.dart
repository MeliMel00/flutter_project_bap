import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
    ),
  );
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Center(
        child: Text('Payment'),
        // ElevatedButton(
        //   // Within the SecondScreen widget
        //   onPressed: () {
        //     // Navigate back to the first screen by popping the current route
        //     // off the stack.
        //     Navigator.pop(context);
        //   },
        //   child: const Text('profil'),
        // ),
      ),
    );
  }
}
