import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/app_bar_auth.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_content_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constansts/app_text_style.dart';
import '../../../../core/route/route_manager.dart';
import '../../../widgets/custom_subtitle_text.dart';
import '../../../widgets/custom_title_text.dart';


class ModuleOneScreen extends StatefulWidget {
  const ModuleOneScreen({super.key});

  @override
  State<ModuleOneScreen> createState() => _ModuleOneScreenState();
}

class _ModuleOneScreenState extends State<ModuleOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: CustomAppBar(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               TitleText(title: 'Arrival',),
               SizedBox(height: 6.h,),
                SubTitle(subtitle: "Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life.",),
               SizedBox(height: 24.h,),
               Container(
                 padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 12.w),
                 decoration: BoxDecoration(
                   color: AppColors.cardBackgroundColor,
                   borderRadius: BorderRadius.circular(12.r),
                    
                 ),
                 child:Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Explanation of the app", style: TextStyle(color: Colors.black, fontSize: 18.sp, ),),
                     SizedBox(height: 20.h,),
                     CustomButton(buttonText: "Explanation", onTap: (){
                       Navigator.pushNamed(context, Routes.explainationAppRoute);
                     }),

                   ],
                 ),
               ),
               SizedBox(height: 20.h,),
               CustomContentButton(text: "My Personal Story", onTap: (){
                 Navigator.pushNamed(context, Routes.myPersonalStoryRoute );
               },),
               SizedBox(height: 20.h,),
               Container(
                 padding: EdgeInsets.all(16.r),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(12.r),
                   border: Border.all(
                     color: Color(0xFF96B2D0),
                   )
                 ),
                 child: Column(
                   children: [
                     Text("Mindset Impulse", style: AppTextStyles.nunitoS16RegularC000000.copyWith(fontWeight: FontWeight.bold),),
                     SizedBox(height: 12.h,),
                     Text("\"The greatest healing comes from within. This app is your compass, but you are the captain of your ship.\"", style: AppTextStyles.interS16RegularC6B7280,)
                   ],
                 ),
                 
               ),
               SizedBox(height: 24.h),
               CustomButton(buttonText: "Module 2 : Understanding", onTap: (){
                 Navigator.pushNamed(context, Routes.moduleTwoScreenRoute);
               }),
               SizedBox(height: 8.h),
               CustomButton(buttonText: "SOS Area", onTap: (){}),
             ],
           )
          ],
        ),
      ),

    );
  }
}

