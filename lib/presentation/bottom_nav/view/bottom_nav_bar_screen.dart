import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_icons.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import '../../home/view/home_screen.dart';
import '../../analytics/view/analytics_screens.dart';
import '../../notifications/view/notifications_screen.dart';
import '../../profile/view/profile_screens.dart';
import '../viewmodel/bottom_nav_bar_viewmodel.dart';

class BottomNavBarScreen extends ConsumerStatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  ConsumerState<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends ConsumerState<BottomNavBarScreen> {
  late List<Widget> _screenList;

  @override
  void initState() {
    super.initState();
    _screenList = [
      HomeScreen(),
      AnalyticsScreen(),
      NotificationScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(bottomNavBarProvider);

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _screenList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          ref.read(bottomNavBarProvider.notifier).onItemTapped(index);
        },
        selectedItemColor: Colors.blue, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(
              iconPath: AppIcons.homeIcon,
              isSelected: currentIndex == 0,
            ),
            activeIcon: _buildIcon(
              iconPath: AppIcons.homeIcon,
              isSelected: true,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              iconPath: AppIcons.analyticsIcon,
              isSelected: currentIndex == 1,
            ),
            activeIcon: _buildIcon(
              iconPath: AppIcons.analyticsIcon,
              isSelected: true,
            ),
            label: "Analytics",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              iconPath: AppIcons.notificationIcon,
              isSelected: currentIndex == 2,
            ),
            activeIcon: _buildIcon(
              iconPath: AppIcons.notificationIcon,
              isSelected: true,
            ),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              iconPath: AppIcons.userIcon,
              isSelected: currentIndex == 3,
            ),
            activeIcon: _buildIcon(
              iconPath: AppIcons.userIcon,
              isSelected: true,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  // Helper method to build icon with color filter
  Widget _buildIcon({required String iconPath, required bool isSelected}) {
    return Image.asset(
      iconPath,
      height: 24,
      width: 24,
      color: isSelected ? Color(0Xff1570EF) : Color(0Xff6B7280),
    );
  }
}