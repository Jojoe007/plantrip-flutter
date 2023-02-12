import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:plantrip/models/User.dart';
import 'package:plantrip/screens/me/components/me_body.dart';

class MeScreen extends StatelessWidget {
  const MeScreen({super.key});

  static const routeName = '/me';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MeBody());
  }
}
