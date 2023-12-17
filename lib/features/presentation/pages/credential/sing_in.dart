import 'package:flutter/material.dart';
import 'package:instgram_clone/core/theme/app_colors.dart';

import '../../widgets/sign_in_body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: SignInBody(),
      ) ,
    );
  }
}
