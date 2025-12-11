import 'package:anninawyss_o72194b15c03/core/constansts/app_icons.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_five/provider/expanded_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod/legacy.dart';
import '../../../core/constansts/app_colors.dart';
import '../../widgets/custom_app_bar.dart';

class CalmingNervousSystem extends ConsumerStatefulWidget {
  const CalmingNervousSystem({super.key});

  @override
  ConsumerState<CalmingNervousSystem> createState() => _CalmingNervousSystemState();
}

class _CalmingNervousSystemState extends ConsumerState<CalmingNervousSystem> {
  final List<String> _titles = [
    "Calming the Nervous System",
    "4-7-8 Breathing",
    "5-4-3-2-1 Method",
    "Body Scan",
    "Progressive Muscle Relaxiation",
    "Meditation",
  ];

  @override
  Widget build(BuildContext context) {
    final isExpanded = ref.watch(expandedListProvider);

    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: AppColors.cardBackgroundColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: isExpanded.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 8.h),
                decoration: BoxDecoration(
                  color: index == 0
                      ? AppColors.cardBackgroundColor
                      : Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(_titles[index]),
                      trailing: Icon(
                        isExpanded[index]
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                      onTap: () {
                        ref.read(expandedListProvider.notifier).toggle(index);
                      },
                    ),
                    if (isExpanded[index])
                      Container(
                        padding: EdgeInsets.fromLTRB(16.r, 0, 16.r, 16.r),
                        child: _buildContainer(index),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }



  Widget _buildContainer(int index) {
    switch (index) {
      case 0:
        return Container(
          decoration: BoxDecoration(
            color: AppColors.cardBackgroundColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          alignment: Alignment.center,
          child:  Text(
            "Calming the Nervous System helps restore balance after emotional stress or trauma. When the body remains in a constant state of alert, it affects both mental and physical health. Through breathing exercises, grounding techniques, and mindful awareness, you can help your body shift from survival mode to a state of safety and calm, allowing healing and clarity to begin.",
            style: AppTextStyles.interS16RegularC6B7280,
          ),
        );
      case 1:
        return Container(
          decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // aligns children to the top
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.r), // optional: adjust if text baseline is higher
                    child: Icon(
                      Icons.circle,
                      size: 8.r,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      'The 4-7-8 breathing technique, also known as "relaxing breath," involves breathing in for 4 seconds, holding the breath for 7 seconds, and exhaling for 8 seconds.',
                      style: AppTextStyles.nunitoS14RegularC2F2A29, // optional: set font size
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h,),
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),

                ),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.headphoneIcon,
                      height: 24.h,
                      width: 24.w,
                    ),
                    SizedBox(width: 8.w),
                    Text('Guided Audio', style: AppTextStyles.nunitoS16RegularC000000),
                    const Spacer(),
                    Image.asset(AppIcons.playIcon, height: 24.h, width: 24.w),


                  ],
                ),
              )

            ],
          )
        );
      case 2:
        return Container(
          padding: EdgeInsets.all(8.r),
          color: Colors.white,
          alignment: Alignment.center,
          child:Text("This is a grounding technique to help you get back in touch with the present moment. Acknowledge 5 things you can see, 4 things you can touch, 3 things you can hear, 2 things you can smell, and 1 thing you can taste.", style: AppTextStyles.interS16RegularC6B7280,)
        );
        case 3:
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // aligns children to the top
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.r), // optional: adjust if text baseline is higher
                        child: Icon(
                          Icons.circle,
                          size: 8.r,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          'A body scan meditation involves paying attention to parts of the body and bodily sensations in a gradual sequence from feet to head.',
                          style: AppTextStyles.nunitoS14RegularC2F2A29, // optional: set font size
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Container(
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: AppColors.cardBackgroundColor,
                      borderRadius: BorderRadius.circular(12.r),

                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          AppIcons.headphoneIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(width: 8.w),
                        Text('Guided Audio', style: AppTextStyles.nunitoS16RegularC000000),
                        const Spacer(),
                        Image.asset(AppIcons.playIcon, height: 24.h, width: 24.w),


                      ],
                    ),
                  )

                ],
              )
          );
      case 4:
        return Container(
            padding: EdgeInsets.all(8.r),
            color: Colors.white,
            alignment: Alignment.center,
            child:Text("This is a deep relaxation technique that has been effectively used to control stress and anxiety, relieve insomnia, and reduce symptoms of certain types of chronic pain.", style: AppTextStyles.interS16RegularC6B7280,)
        );
      default:
        return Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: AppColors.cardBackgroundColor,
            borderRadius: BorderRadius.circular(12.r),

          ),
          child: Row(
            children: [
              Image.asset(
                AppIcons.headphoneIcon,
                height: 24.h,
                width: 24.w,
              ),
              SizedBox(width: 12.w),
              Expanded(child: Text('5 Minutes Guided Meditations', style: AppTextStyles.nunitoS16RegularC000000)),
              //const Spacer(),
              Image.asset(AppIcons.playIcon, height: 24.h, width: 24.w),


            ],
          ),
        );
    }
  }
}
