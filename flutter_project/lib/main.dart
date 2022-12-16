import 'package:flutter/material.dart';
import 'package:flutter_project/aboutus.dart';
import 'package:flutter_project/booking.dart';
import 'package:flutter_project/index.dart';
import 'package:flutter_project/list.dart';
import 'package:flutter_project/payment.dart';
import 'package:flutter_project/profil.dart';
import 'package:flutter_project/register.dart';
import 'package:flutter_project/whyus.dart';
import 'package:flutter_project/login.dart';
void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/profil': (context) => const ProfilScreen(),
        '/list': (context) => const ListScreen(),
        '/why': (context) => const WhyUsScreen(),
        '/about': (context) => const AboutUsScreen(),
        '/booking': (context) => const BookingScreen(),
        '/payment': (context) => const PaymentScreen(),
      },
    );
  }
}
