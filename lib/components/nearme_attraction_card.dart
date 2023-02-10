import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:plantrip/models/Attraction.dart';

class NearMeAttractionCard extends StatefulWidget {
  const NearMeAttractionCard({Key? key, required this.attraction})
      : super(key: key);

  final Attraction attraction;

  @override
  State<StatefulWidget> createState() => _NearMeAttractionCardState();
}

class _NearMeAttractionCardState extends State<NearMeAttractionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: SizedBox(
          width: 122,
          height: 158,
          child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 4 / 4,
                    child: Hero(
                      tag: widget.attraction.id.toString(),
                      child: Image.network(widget.attraction.image,
                          width: 150, fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  widget.attraction.title,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "range km.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        // color: kPrimaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
