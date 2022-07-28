import 'package:flutter/material.dart';
import 'package:flutter_desktop_boilerplate/core/routes.dart';
import 'package:flutter_desktop_boilerplate/features/authentication/presentation/ui/splash_screen.dart'; 

///root material app of the project
class MyApp extends StatelessWidget {
  ///
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        builder: (BuildContext context, Widget? child) => child!,
        onGenerateRoute: (RouteSettings settings) =>
            Routes.fadeThrough<Widget>(settings, (BuildContext context) {
          switch (settings.name) {
            default:
              return const SplashScreen();
          }
        }),
        debugShowCheckedModeBanner: false,
      );
}
