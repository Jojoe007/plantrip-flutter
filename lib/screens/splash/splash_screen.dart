import 'package:flutter/material.dart';
import 'package:plantrip/utils/size_utils.dart';

import 'components/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
