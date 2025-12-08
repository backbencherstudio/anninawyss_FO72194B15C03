import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/provider/narcissism_provider.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/widgets/custom_narcissism_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';
import '../../../widgets/custom_app_bar.dart';
class NarcissismType extends ConsumerWidget {
  const NarcissismType({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(narcissismProvider);

    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("Types of Narcissism", style: AppTextStyles.nunitoS18BoldC2F2A29,),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CustomNarcissismTileTile(item: items[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
