import 'package:flutter/material.dart';
import 'package:plantrip/components/suggest_attraction_card.dart';
import 'package:plantrip/models/Attraction.dart';
import 'package:plantrip/screens/home/components/category_menu.dart';
import 'package:plantrip/screens/home/components/home_header.dart';
import 'package:plantrip/screens/home/components/nearme_attraction.dart';
import 'package:plantrip/screens/home/components/province_attraction.dart';
import 'package:plantrip/screens/home/components/search_field.dart';
import 'package:plantrip/screens/home/components/search_panel.dart';
import 'package:plantrip/screens/home/components/suggest_attraction.dart';
import 'package:plantrip/test.dart';
import 'package:plantrip/utils/size_utils.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Column(
          children: [
            const HomeHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SuggestAttraction(),
                    CategoryMenu(),
                    const SizedBox(
                      height: 20,
                    ),
                    const NearMeAttraction(),
                    const SizedBox(
                      height: 20,
                    ),
                    SearchPanel(),
                    const SizedBox(
                      height: 20,
                    ),
                    ProvinceAttraction(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
