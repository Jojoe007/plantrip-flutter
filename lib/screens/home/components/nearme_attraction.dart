import 'package:flutter/material.dart';
import 'package:plantrip/components/nearme_attraction_card.dart';
import 'package:plantrip/screens/home/components/section_title.dart';
import 'package:plantrip/test.dart';

class NearMeAttraction extends StatelessWidget {
  const NearMeAttraction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SectionTitle(
            title: 'Near Me',
            seeMore: true,
            onPress: () {}, //TODO: New Screen to NearMe Full Screen
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(4, (index) {
                  return NearMeAttractionCard(
                    attraction: TESTDATA.TRAVELDATA.elementAt(index),
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
