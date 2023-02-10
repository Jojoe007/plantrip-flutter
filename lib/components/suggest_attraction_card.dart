import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:plantrip/models/Attraction.dart';

class SuggestAttractionCard extends StatelessWidget {
  const SuggestAttractionCard({Key? key, required this.attraction})
      : super(key: key);

  final Attraction attraction;

  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  attraction.title,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      attraction.des,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        // color: kPrimaryColor,
                      ),
                    ),
                    Text("get range"),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
