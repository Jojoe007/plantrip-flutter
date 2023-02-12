import 'package:flutter/material.dart';
import 'package:plantrip/screens/rental/components/rental_header.dart';

class RentalBody extends StatefulWidget {
  const RentalBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RentalBodyState();
}

class _RentalBodyState extends State<RentalBody> {
  late String search = "";

  refresh(String? location) {
    setState(() {
      search = location!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RentalHeader(),
        Text(search),
      ],
    );
  }
}
