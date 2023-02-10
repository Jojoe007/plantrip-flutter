import 'package:flutter/material.dart';
import 'package:plantrip/screens/trip/components/trip_header.dart';

class TripBody extends StatelessWidget {
  const TripBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [TripHeader()],
        ),
      ),
    );
  }
}
