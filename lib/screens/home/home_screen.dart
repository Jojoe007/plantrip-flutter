import 'package:flutter/material.dart';
import 'package:plantrip/utils/size_utils.dart';

import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return const Scaffold(
      body: HomeBody(),
    );
  }
}
