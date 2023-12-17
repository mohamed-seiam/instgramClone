import 'package:flutter/material.dart';
import 'package:instgram_clone/core/theme/app_colors.dart';

import '../../widgets/sign_up_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backGroundColor,
      ),
      backgroundColor: AppColors.backGroundColor,
      body: const SafeArea(child: SignUpBody()),
    );
  }
}
