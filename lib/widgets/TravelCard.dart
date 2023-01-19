import 'package:flutter/material.dart';
import 'package:plantrip/models/TravelModel.dart';
import 'package:plantrip/pages/TravelPage.dart';

import '../test.dart';

class TravelCard extends StatefulWidget {
  final TravelModel data;
  final State beforePage;
  const TravelCard({Key? key, required this.data, required this.beforePage})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TravelCardState();
}

class _TravelCardState extends State<TravelCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _gotoTravelPage() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => TravelPage(
                    data: widget.data,
                  )))).then(((value) {
        widget.beforePage.setState(() {});
      }));
    }

    String _getTitle() {
      String ret = widget.data.title;
      if (ret.length < 14) {
        return ret;
      } else {
        return ret.substring(1 - 1, 14 - 1); //ไม่ใช้เลข 13 มันบ่ฉ๋วย
      }
    }

    return GestureDetector(
      onTap: _gotoTravelPage,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 122,
                  child: Image.network(
                    widget.data.image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 6, right: 6, bottom: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _getTitle(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.data.des,
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '5.0/5.0',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // return GestureDetector(
    //   onTap: _goToTravelPage,
    //   child: Card(
    //     semanticContainer: true,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    //     clipBehavior: Clip.antiAliasWithSaveLayer,
    //     elevation: 8,
    //     child: Stack(
    //       alignment: AlignmentDirectional.centerStart,
    //       fit: StackFit.expand,
    //       children: [
    //         Positioned(
    //             top: 0,
    //             left: 0,
    //             height: height / 1.8,
    //             child: Image(
    //               image: NetworkImage(widget.data.image),
    //               fit: BoxFit.fill,
    //             )),
    //         Positioned(
    //           bottom: (height / 100) * 7,
    //           left: 10,
    //           child: Text(
    //             widget.data.title,
    //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         Positioned(
    //           bottom: (height / 100) * 3,
    //           left: 12,
    //           child: Text(
    //             widget.data.des,
    //             style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
