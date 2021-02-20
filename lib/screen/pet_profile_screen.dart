import 'package:flutter/material.dart';
import 'package:speed_code_pet_app/constant/app_colors.dart';
import 'package:speed_code_pet_app/widget/app_bottom_navigation_bar.dart';
import 'package:speed_code_pet_app/widget/pet_card.dart';
import 'package:speed_code_pet_app/widget/tab_bar_item.dart';

class PetProfileScreen extends StatefulWidget {
  @override
  _PetProfileScreenState createState() => _PetProfileScreenState();
}

class _PetProfileScreenState extends State<PetProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      initialIndex: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: AppColors.background,
        title: Text(
          'Pet\nProfile',
          style: Theme.of(context).textTheme.headline5.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        titleSpacing: 16,
        elevation: 0,
        actions: [
          SizedBox(
            width: 24,
            height: 24,
            child: IconButton(
              icon: Image.asset('assets/image/menu.png'),
              onPressed: () {},
              padding: const EdgeInsets.all(0.0),
              iconSize: 24,
            ),
          ),
          const SizedBox(width: 16),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelPadding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 0,
          indicator: ShapeDecoration(
            color: AppColors.primary,
            shape: StadiumBorder(
              side: BorderSide(width: 0),
            ),
          ),
          isScrollable: true,
          tabs: [
            Tab(child: TabBarItem('Recent')),
            Tab(child: TabBarItem('Favorites')),
            Tab(child: TabBarItem('All')),
            Tab(child: TabBarItem('Trending')),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 32,
                  bottom: 32,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: PetCard(
                            icon: Image.asset(
                                'assets/image/pet_vaccinations.png'),
                            iconBackgroundColor: AppColors.amber,
                            title: 'Pet\nVaccinations',
                            subTitle: 'Detailed Reports',
                            percentage: 35,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: PetCard(
                            icon: Image.asset('assets/image/pet_surgeries.png'),
                            iconBackgroundColor: AppColors.pink,
                            title: 'Pet\nSurgeries',
                            subTitle: 'Detailed Reports',
                            percentage: 64,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: PetCard(
                            icon: Image.asset('assets/image/pet_treats.png'),
                            iconBackgroundColor: AppColors.orange,
                            title: 'Pet\nTreats',
                            subTitle: 'Detailed Reports',
                            percentage: 72,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: PetCard(
                            icon: Image.asset('assets/image/pet_food.png'),
                            iconBackgroundColor: AppColors.blue,
                            title: 'Pet\nFood',
                            subTitle: 'Detailed Reports',
                            percentage: 45,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: PetCard(
                            icon:
                                Image.asset('assets/image/pet_accessories.png'),
                            iconBackgroundColor: AppColors.blue,
                            title: 'Pet\nAccessories',
                            subTitle: 'Detailed Reports',
                            percentage: 87,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: PetCard(
                            icon:
                                Image.asset('assets/image/pet_merchandise.png'),
                            iconBackgroundColor: AppColors.amber,
                            title: 'Pet\nMerchandise',
                            subTitle: 'Detailed Reports',
                            percentage: 39,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          AppBottomNavigationBar(
            onChange: (index) {},
          ),
        ],
      ),
    );
  }
}
