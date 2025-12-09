import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomDescriptionTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomDescriptionTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 5,
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0Xff96B2D0), width: 1),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r))
      ),

    );
  }
}
