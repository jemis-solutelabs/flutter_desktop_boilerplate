import 'package:flutter/material.dart'; 

///splashcreen of the application
class SplashScreen extends StatelessWidget {
  ///
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(),
          child: const Center(child: Text('App name')),
        ),
      );
}
