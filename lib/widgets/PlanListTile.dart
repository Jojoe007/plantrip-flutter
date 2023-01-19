import 'package:flutter/material.dart';

class PlanListTile extends StatefulWidget {
  final String data;

  const PlanListTile({Key? key, required this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PlanListTileState();
}

class _PlanListTileState extends State<PlanListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18, bottom: 18),
      decoration: BoxDecoration(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.hotel),
            Text(widget.data),
            Icon(Icons.menu),
          ],
        )
      ]),
    );
  }
}

enum PanListTileType {
  Hotel,
}
