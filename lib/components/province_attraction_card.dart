import 'package:flutter/material.dart';
import 'package:plantrip/models/Province.dart';

class ProvinceAttractionCard extends StatelessWidget {
  const ProvinceAttractionCard({Key? key, required this.province})
      : super(key: key);

  final Province province;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(province.image),
              fit: BoxFit.cover,
              alignment: Alignment.center,
              colorFilter: const ColorFilter.mode(
                  Color.fromARGB(50, 0, 0, 0), BlendMode.multiply)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              province.name,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(4.0, 4.0),
                      blurRadius: 20.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(141, 26, 26, 26),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "ที่เที่ยวทั้งหมด ${province.attractionCount} แห่ง",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 20.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
