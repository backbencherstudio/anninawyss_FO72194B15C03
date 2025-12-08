import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/route/route_manager.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/custom_content_button.dart';


class ExplainationApp extends StatefulWidget {
  const ExplainationApp({super.key});

  @override
  State<ExplainationApp> createState() => _ExplainationAppState();
}

class _ExplainationAppState extends State<ExplainationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.whiteBackgroundColor,
                  border: Border.all(
                    color: Color(0xFF96B2D0),
                  )
              ),
              child: Column(
                children: [
                  TitleText(title: "Explanation of the app"),
                  SizedBox(height: 16.h),
                  CustomContentButton(text: 'Reason for creating the app', onTap: () {
                    Navigator.pushNamed(context, Routes.explainAppDetailsRoute);
                  },),
                  SizedBox(height: 20.h,),
                  CustomContentButton(text: "Operation of the app", onTap: (){
                    Navigator.pushNamed(context, Routes.operationAppRoute);
                  }),
                  SizedBox(height: 20.h,),
                  CustomContentButton(text: "Functionality of the app", onTap: (){
                    Navigator.pushNamed(context, Routes.functionalityAppRoute);
                  }),
                  SizedBox(height: 20.h,),
                  CustomContentButton(text: "Disclaimer", onTap: (){
                    Navigator.pushNamed(context, Routes.disclaimerAppRoute);
                  }),
                  SizedBox(height: 20.h,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
