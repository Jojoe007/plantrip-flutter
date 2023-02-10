import 'package:flutter/material.dart';
import 'package:plantrip/screens/home/components/search_field.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        // Text(
        //   "ค้นหาที่เที่ยวดีกว่าค้นหาความรักที่มักจะหาไม่เจอ",
        //   style: TextStyle(
        //     fontSize: 16,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        SearchField(),
      ]),
    );
  }
}
