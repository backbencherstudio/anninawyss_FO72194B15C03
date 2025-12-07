import 'package:flutter/material.dart';
import '../../core/constansts/app_text_style.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.nunitoS18BoldC2F2A29,
    );
  }
}
