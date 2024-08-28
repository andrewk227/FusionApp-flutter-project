import 'package:flutter/material.dart';
import 'package:fusion_project/app_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                FAppTheme.defaultFusionColor,
                FAppTheme.secondryFusionColor,
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            ),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image(
                        image: AssetImage('assets/images/splash_logo.png'),
                        height: 50),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Welcome to App',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Here\'s a good place for a brief overview\n of the app or its key features.',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      textAlign: TextAlign.center),
                ])));
  }
}
