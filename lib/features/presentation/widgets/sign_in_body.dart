import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instgram_clone/core/helper/spacing.dart';
import 'package:instgram_clone/core/routing/routes.dart';
import 'package:instgram_clone/core/theme/app_colors.dart';
import 'package:instgram_clone/core/widgets/form_container_widget.dart';
import 'package:instgram_clone/features/presentation/widgets/button_container_widget.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: Container(),
          ),
          Center(
            child: SvgPicture.asset(
              'assets/instagram.svg',
              colorFilter: const ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
              width: 200.w,
            ),
          ),
          verticalSpace(20.h),
          const FormContainerWidget(
            hintText: 'Email',
          ),
          verticalSpace(15.h),
          const FormContainerWidget(
            hintText: 'Password',
            isPasswordField: true,
          ),
          verticalSpace(15.h),
          ButtonContainerWidget(
            color: AppColors.blueColor,
            text: 'Sign In',
            onTapListener: () {},
          ),
          Flexible(
            flex: 2,
            child: Container(),
          ),
          const Divider(
            color: AppColors.secondaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account ? ',
                style: TextStyle(color: AppColors.primaryColor),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.signUpScreen);
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
