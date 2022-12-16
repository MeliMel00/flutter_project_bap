import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
    ),
  );
}

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30), //apply padding to all four sides
              child: Text(
                "Total: 25.00€",
                style: TextStyle(fontSize: 30),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
            ),
            Form(
              child: new TextField(
                decoration: new InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'Enter your phone number',
                    labelText: "Phone number"),
                keyboardType: TextInputType.number,
                maxLength: 10,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Form(
              child: new TextField(
                decoration: new InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'MM/YY',
                    labelText: "MM/YY"),
                keyboardType: TextInputType.number,
                maxLength: 4,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Form(
              child: new TextField(
                decoration: new InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'CVC',
                    labelText: "CVC"),
                keyboardType: TextInputType.number,
                maxLength: 3,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  onSurface: Colors.grey,
                ),
                child: Text(
                  'Pay now',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
