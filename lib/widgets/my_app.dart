import 'package:flutter/material.dart';
import 'package:mind_sharp/widgets/auth.dart';
import 'package:mind_sharp/widgets/home_screen.dart';
import 'package:mind_sharp/widgets/sing_up.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/auth': (context) => AuthScreen(),
        '/sing_up': (context) => SingUpScreen(),
        '/home': (context) => homeScreen()
      },
      initialRoute: '/auth',
    );
  }
}
