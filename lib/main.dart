import 'package:flutter/material.dart';
import 'package:speed_code_pet_app/constant/app_colors.dart';
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
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: AppColors.text,
            ),
        backgroundColor: AppColors.background,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.text,
              displayColor: AppColors.subText,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.primary,
            elevation: 0,
            shape: const StadiumBorder(),
            textStyle: const TextStyle(color: AppColors.text),
          ),
        ),
      ),
      home: SignUpScreen(),
    );
  }
}
