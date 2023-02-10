import 'package:flutter/cupertino.dart';
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
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onTap: () {
          Navigator.pushNamed(context, SearchScreen.routeName);
        },
        cursorColor: Colors.black,
        showCursor: false,
        decoration: const InputDecoration(
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
