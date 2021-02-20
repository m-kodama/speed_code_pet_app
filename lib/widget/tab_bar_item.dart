import 'package:flutter/material.dart';
import 'package:speed_code_pet_app/constant/app_colors.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 64),
      child: Container(
        decoration: ShapeDecoration(
          shape: StadiumBorder(
            side: BorderSide(
              width: 0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.text,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
