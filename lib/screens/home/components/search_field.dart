import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:plantrip/screens/search/search_screen.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onTap: () {
          Navigator.pushNamed(context, SearchScreen.routeName);
        },
        cursorColor: Colors.black,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(10),
            isDense: true,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search Attraction",
            prefixIcon: Icon(
              Ionicons.search,
              color: Colors.black,
            )),
      ),
    );
  }
}
