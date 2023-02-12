import 'package:flutter/material.dart';
import 'package:plantrip/screens/rental/components/rental_body.dart';

class RentalScreen extends StatelessWidget {
  const RentalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RentalBody(),
    );
  }
}
