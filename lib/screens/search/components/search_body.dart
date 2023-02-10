import 'package:flutter/material.dart';
import 'package:plantrip/screens/search/components/search_map.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SearchMap(),
    );
  }
}
