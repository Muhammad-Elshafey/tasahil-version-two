import 'package:flutter/material.dart';
import 'package:tasahil/views/home_view.dart';
import 'package:tasahil/views/login_view.dart';
import 'package:tasahil/views/registration_view.dart';
import 'package:tasahil/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasahil',
      routes: {
        'register': (context) => const RegistrationView(),
        'login': (context) => const LoginView(),
        'home': (context) => const HomeView(),
        'splash': (context) => const SplashView(),
      },
      home:const SplashView(),
    );
  }
}