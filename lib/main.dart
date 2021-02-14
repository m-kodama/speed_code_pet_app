import 'package:flutter/material.dart';
import 'package:speed_code_pet_app/screen/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const StadiumBorder(),
          ),
        ),
      ),
      home: SignUpScreen(),
    );
  }
}
