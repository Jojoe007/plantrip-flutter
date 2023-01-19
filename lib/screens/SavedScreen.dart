import 'package:flutter/material.dart';

import '../test.dart';
import '../widgets/TravelCard.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(controller: _controller, tabs: [
                Tab(
                  text: 'Travels',
                ),
                Tab(
                  text: 'Trips',
                )
              ])
            ],
          ),
        ),
        body: TabBarView(controller: _controller, children: [
          CustomScrollView(slivers: [
            SliverPadding(
              padding: EdgeInsets.all(12),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate(((context, index) {
                  return TravelCard(
                    data: TESTDATA.TRAVELSAVED.elementAt(index),
                    beforePage: this,
                  );
                }), childCount: TESTDATA.TRAVELSAVED.length),
              ),
            )
          ]),
          CustomScrollView(slivers: [
            SliverPadding(
              padding: EdgeInsets.all(12),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate(((context, index) {
                  return TravelCard(
                    data: TESTDATA.TRAVELSAVED.elementAt(index),
                    beforePage: this,
                  );
                }), childCount: TESTDATA.TRAVELSAVED.length),
              ),
            )
          ])
        ]));
  }
}
// 