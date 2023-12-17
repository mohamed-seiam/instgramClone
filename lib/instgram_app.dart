import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instgram_clone/core/routing/app_router.dart';
import 'package:instgram_clone/core/routing/routes.dart';

import 'features/presentation/pages/credential/sing_in.dart';

class InstagramApp extends StatelessWidget {
  final AppRouter appRouter;
  const InstagramApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Instagram App',
        theme: ThemeData.dark(
          useMaterial3: false,
        ),
        debugShowCheckedModeBanner: false,
        home: const SignInPage(),
        initialRoute: Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      ) ,
    );
  }
}
