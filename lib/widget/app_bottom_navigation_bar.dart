import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speed_code_pet_app/constant/app_colors.dart';
import 'package:speed_code_pet_app/extensions.dart';

class SelectedIndex extends ValueNotifier<int> {
  SelectedIndex(
    int initialIndex,
  ) : super(initialIndex);

  void select(int index) {
    value = index;
  }
}

const double _barSize = 64;
const double _iconSize = 24;
const double _selectedIconSize = 32;
const double _selectedIconContainerSize = 54;

class AppBottomNavigationBar extends StatelessWidget {
  AppBottomNavigationBar({
    @required this.onChange,
    this.initialIndex = 2,
  });

  final ValueChanged<int> onChange;
  final int initialIndex;

  final List<String> icons = [
    'assets/image/home.png',
    'assets/image/account.png',
    'assets/image/pet.png',
    'assets/image/setting.png',
    'assets/image/logout.png'
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndexNotifier = SelectedIndex(initialIndex);
    return ValueListenableProvider<int>.value(
      value: selectedIndexNotifier,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.sheet,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewPadding.bottom,
              left: 32,
              right: 32,
            ),
            child: SizedBox(
              height: _barSize,
              width: double.infinity,
              child: Builder(builder: (context) {
                final selectedIndex = Provider.of<int>(context);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: icons
                      .indexedMap(
                        (index, icon) => AppBottomNavigationButton(
                          icon: Image.asset(icon),
                          selected: index == selectedIndex,
                          onPressed: () {
                            selectedIndexNotifier.select(index);
                            onChange(index);
                          },
                        ),
                      )
                      .toList(),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class AppBottomNavigationButton extends StatelessWidget {
  const AppBottomNavigationButton({
    @required this.icon,
    @required this.selected,
    @required this.onPressed,
  });

  final Widget icon;
  final bool selected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _iconSize,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: selected
                ? -_selectedIconContainerSize / 2
                : (_barSize - _selectedIconSize) / 2,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                AnimatedOpacity(
                  opacity: selected ? 1 : 0,
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 200),
                  child: Container(
                    width: _selectedIconContainerSize,
                    height: _selectedIconContainerSize,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                SizedBox(
                  width: selected ? _selectedIconSize : _iconSize,
                  height: selected ? _selectedIconSize : _iconSize,
                  child: IconButton(
                    icon: icon,
                    onPressed: onPressed,
                    padding: const EdgeInsets.all(0.0),
                    iconSize: _iconSize,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
