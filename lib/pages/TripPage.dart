import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plantrip/utilities/DateTextFormmater.dart';

class TripPage extends StatefulWidget {
  const TripPage({Key? key}) : super(key: key);

  State<StatefulWidget> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  _goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: _goBack,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.star_border),
            onPressed: () {},
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('tripname',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          ' by Jojoe',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 18,
                        ),
                        onPressed: () {})
                  ],
                )
              ],
            ),
          )),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(((context, index) {
              return ListTile(
                selected: true,
                title: Text('list'),
              );
            }), childCount: 2)),
          )
        ],
      ),
    );
  }
}
