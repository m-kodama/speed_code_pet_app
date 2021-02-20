import 'package:flutter/material.dart';
import 'package:speed_code_pet_app/constant/app_colors.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    @required this.icon,
    @required this.iconBackgroundColor,
    @required this.title,
    @required this.subTitle,
    @required this.percentage,
  });

  final Widget icon;
  final Color iconBackgroundColor;
  final String title;
  final String subTitle;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.sheet,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconBackgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: icon,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 4,
                    alignment: Alignment.centerLeft,
                    decoration: ShapeDecoration(
                      color: Color(0xFF353648),
                      shape: StadiumBorder(),
                    ),
                    child: FractionallySizedBox(
                      widthFactor: percentage / 100,
                      child: Container(
                        height: 4,
                        decoration: ShapeDecoration(
                          color: iconBackgroundColor,
                          shape: StadiumBorder(),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '$percentage%',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: AppColors.text,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
