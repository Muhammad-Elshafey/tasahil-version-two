import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
       const Duration(
        seconds: 3,
      ),
        ()
        {
          Navigator.pushNamed(context, 'login');
        }
    );
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
