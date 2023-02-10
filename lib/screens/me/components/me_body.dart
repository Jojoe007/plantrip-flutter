import 'package:flutter/material.dart';
import 'package:plantrip/screens/me/components/me_header.dart';

class MeBody extends StatelessWidget {
  const MeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Column(
          children: [
            MeHeader(),
            Expanded(
              child: SingleChildScrollView(),
            )
          ],
        ));
  }
}
