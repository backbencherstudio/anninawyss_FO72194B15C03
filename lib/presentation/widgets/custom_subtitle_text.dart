import 'package:flutter/material.dart';

import '../../core/constansts/app_text_style.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    required this.subtitle,
    super.key,
  });
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(subtitle, style: AppTextStyles.interS16RegularC6B7280,);
  }
}
