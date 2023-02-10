import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:plantrip/models/Attraction.dart';

class SuggestAttractionCard extends StatelessWidget {
  const SuggestAttractionCard({Key? key, required this.attraction})
      : super(key: key);

  final Attraction attraction;

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: SizedBox(
          width: 300,
          child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 1.6,
                    child: Hero(
                      tag: attraction.id.toString(),
                      child: Image.network(attraction.image,
                          width: 200, fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  attraction.title,
                  style: _textTheme.titleMedium,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      attraction.des,
                      style: _textTheme.bodySmall,
                    ),
                    Text("rating : ${"12"}", style: _textTheme.bodySmall),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
