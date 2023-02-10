import 'package:flutter/material.dart';
import 'package:plantrip/screens/trip/components/trip_body.dart';
import 'package:plantrip/screens/trip/components/trip_header.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TripBody(),
    );
  }
}
