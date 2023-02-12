import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:plantrip/models/User.dart';
import 'package:plantrip/screens/me/components/me_header.dart';

import 'package:http/http.dart' as http;

class MeBody extends StatefulWidget {
  const MeBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MeBodyState();
  }
}

class _MeBodyState extends State<MeBody> {
  late Future<User> userFuture;

  Future<User> getMe() async {
    final response =
        await http.get(Uri.parse("http://localhost:3000/jojoe007"));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    }

    throw Exception("Fail to load data");
  }

  @override
  void initState() {
    // userFuture = getMe();
    super.initState();
  }

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
      ),
    );
  }
}
