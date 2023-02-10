import 'package:flutter/material.dart';
import 'package:plantrip/components/province_attraction_card.dart';
import 'package:plantrip/models/Province.dart';
import 'package:plantrip/screens/home/components/section_title.dart';

class ProvinceAttraction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SectionTitle(
            title: 'by Province',
            seeMore: true,
            onPress: () {}, //TODO: New Screen to Suggest Full Screen
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(4, (index) {
                  return ProvinceAttractionCard(
                    province: Province(
                        id: index, name: "Bangkok", attractionCount: 300),
                  );
                })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
