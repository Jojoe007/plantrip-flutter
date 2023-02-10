import 'package:flutter/material.dart';
import 'package:plantrip/components/suggest_attraction_card.dart';
import 'package:plantrip/screens/home/components/section_title.dart';
import 'package:plantrip/test.dart';

class SuggestAttraction extends StatelessWidget {
  const SuggestAttraction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SectionTitle(
            title: 'Suggestions',
            onPress: () {}, //TODO: New Screen to Suggest Full Screen
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(TESTDATA.TRAVELDATA.length, (index) {
                  return SuggestAttractionCard(
                      attraction: TESTDATA.TRAVELDATA[index]);
                })
              ],
            ),
          ),
        )
      ],
    );
  }
}
