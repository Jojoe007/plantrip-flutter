import 'package:flutter/material.dart';
import 'package:plantrip/screens/home/components/search_field.dart';

//TODO: อาจจะเพิ่ม Text
class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: const [
        SearchField(),
      ]),
    );
  }
}
