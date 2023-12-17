import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instgram_clone/core/theme/app_colors.dart';

class ButtonContainerWidget extends StatelessWidget {
  const ButtonContainerWidget(
      {super.key, this.color, this.text, this.onTapListener});

  final Color? color;
  final String? text;
  final VoidCallback? onTapListener;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapListener,
      child: Container(
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            '$text',
            style: const TextStyle(
                color: AppColors.primaryColor, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
