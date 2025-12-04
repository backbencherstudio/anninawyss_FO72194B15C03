import 'package:flutter/material.dart';

import '../../core/constansts/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteBackgroundColor,
      automaticallyImplyLeading: false,
      leading: showBackButton && Navigator.canPop(context)
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0Xff28303F),
              ),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330'), // Replace with your image URL
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                'Josephine', // Replace with dynamic user name
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            // Handle SOS button press
            print('SOS button pressed');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XffE3342F), // Background color
          ),
          child:  Text('SOS', style: TextStyle(color: Colors.white)),
        ),
        PopupMenuButton<String>(
          onSelected: (value) {
            // Handle menu item selection
            print('Selected: $value');
          },
          itemBuilder: (BuildContext context) {
            return {'Settings', 'Profile', 'Logout'}.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
          icon: const Icon(Icons.menu, color: Color(0Xff28303F),), //Menu button icon
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}