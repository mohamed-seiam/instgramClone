import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instgram_clone/core/routing/routes.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/form_container_widget.dart';
import 'button_container_widget.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(30.h),
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
                verticalSpace(15.h),
                Stack(
                  children: [
                    Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset('assets/profile.png'),
                    ),
                    const Positioned(
                      right: -1,
                      bottom: -1,
                      child: CircleAvatar(
                          backgroundColor: AppColors.blueColor,
                          radius: 15,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                verticalSpace(20.h),
                const FormContainerWidget(
                  hintText: 'Username',
                ),
                verticalSpace(15.h),
                const FormContainerWidget(
                  hintText: 'Bio',
                ),
                verticalSpace(15.h),
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
                  text: 'Sign Up',
                  onTapListener: () {},
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                const Divider(
                  color: AppColors.secondaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account ? ',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.loginScreen);
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
