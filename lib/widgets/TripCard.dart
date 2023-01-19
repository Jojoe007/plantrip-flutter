import 'package:flutter/material.dart';
import 'package:plantrip/models/TravelModel.dart';
import 'package:plantrip/pages/TripPage.dart';

class TripCard extends StatelessWidget {
  final String data;
  const TripCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const TripPage())));
      },
      child: Container(
        // margin: EdgeInsets.only(bottom: 12), //ย้านไปใช้ ListView.separated
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5,
          child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('จังหวัด : ')
                      ],
                    ),
                    Expanded(
                        child: SizedBox(
                      width: 1,
                    )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('time'), Text('by Jojoe')],
                    )
                  ])),
        ),
      ),
    );
  }
}
