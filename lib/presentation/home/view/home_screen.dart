import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_icons.dart';
import 'package:anninawyss_o72194b15c03/presentation/home/widgets/feel_today_widget.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constansts/app_text_style.dart';
import '../../bottom_nav/view/bottom_nav_bar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteBackgroundColor,
        automaticallyImplyLeading: false, // Hides the default back button
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
            icon: const Icon(Icons.menu, color: Color(0Xff28303F),), // Menu button icon
          ),
        ],
      ),

      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Emotional Check-In", style: TextStyle(color: AppColors.greyTextColor, fontSize: 14,fontWeight: FontWeight.w500),),
                    SizedBox(height: 4.h,),
                    Text("Check your today’s mood.", style: AppTextStyles.nunitoS18BoldC2F2A29,),
                    SizedBox(height: 24.h),
                    CustomButton(buttonText: "Start Check", onTap: (){}),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Text("How do you feel today?", style: AppTextStyles.nunitoS18BoldC2F2A29,),
              SizedBox(height: 8.h,),
              Text("Take a moment to check in with yourself. Your feelings are valid and important.",textAlign: TextAlign.center, style: AppTextStyles.nunitoS16RegularC000000,),
              SizedBox(height: 16.h,),
          
              // Today Moods Container
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: const Color(0XFFE1E1E1),
                    width: 0.4,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: FeelTodayWidget(
                        onTap: () {},
                        icon: AppIcons.happyIcon,
                        label: "Happy",
                      ),
                    ),
                    Expanded(
                      child: FeelTodayWidget(
                        onTap: () {},
                        icon: AppIcons.sadIcon,
                        label: "Sad",
                      ),
                    ),
                    Expanded(
                      child: FeelTodayWidget(
                        onTap: () {},
                        icon: AppIcons.anxiousIcon,
                        label: "Anxious",
                      ),
                    ),
                    Expanded(
                      child: FeelTodayWidget(
                        onTap: () {},
                        icon: AppIcons.angryIcon,
                        label: "Angry",
                      ),
                    ),
                    Expanded(
                      child: FeelTodayWidget(
                        onTap: () {},
                        icon: AppIcons.naturalIcon,
                        label: "Natural",
                      ),
                    ),
                  ],
                )
          
              ),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
          
                ),
                child: Column(
                  children: [
                    Image.asset(AppIcons.sadIcon, height: 32, width: 32,),
                    SizedBox(height: 12.h),
                    Text("Today’s Mode: Sad", style: AppTextStyles.nunitoS18BoldC2F2A29),
                    SizedBox(height: 6.h),
                    Text("It’s okay to feel sad. Let’s take a deep breath together and find calm.", textAlign: TextAlign.center, style: AppTextStyles.nunitoS16W500C6B7280),
                    ],
                )
              ),
              SizedBox(height: 20.h,),
              // Welcome Journey of Healing
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                      children: [
                        Text("Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life.", style: AppTextStyles.interS16RegularC6B7280,),
                        SizedBox(height: 24.h,),
                        Container(
                          
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                            color: AppColors.whiteBackgroundColor,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(
                              color: const Color(0xffD2D2D5).withOpacity(0.6),
                              width: 0.6,
                            ),
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mindset Impulse", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                              Text("“The greatest healing comes from within. This app is your compass, but you are the captain of your ship.”", textAlign: TextAlign.start, style:  AppTextStyles.interS16RegularC6B7280,)
                            ],
                          ),
                          
                        ),
                      ],
                ),
              ),
              SizedBox(height: 20.h,),
              // Today Task Reminder Container
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                decoration: BoxDecoration(
                  color: Color(0XffE5ECF3),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    Text("Today’s Reminder", style: AppTextStyles.nunitoS18BoldC2F2A29,),
                    SizedBox(height: 12.h,),
                    Text("“Healing is not about moving fast, it’s about moving forward one gentle step at a time.”", style: AppTextStyles.interS16RegularC6B7280,),
                    SizedBox(height: 20,),
                    CustomButton(buttonText: "Daily Reflection", onTap: (){})
                  ],
                ),
                
              ),
              SizedBox(height: 30.h,),
              CustomButton(buttonText: "Module 1 : Arriving", onTap: (){}),
              SizedBox(height: 12.h,),
              CustomButton(buttonText: "SOS Area", onTap: (){}),
            ],
          ),
        ),
      )

    );
  }
}
