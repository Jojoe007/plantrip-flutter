import 'package:flutter/material.dart';
import 'package:plantrip/widgets/TripCard.dart';

import '../test.dart';
import '../widgets/TravelCard.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
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
                  text: 'Browse',
                ),
                Tab(
                  text: 'You',
                )
              ])
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return TripCard(data: 'data');
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.transparent,
                height: 12,
              ),
            ),
            ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return TripCard(data: 'data');
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.transparent,
                height: 12,
              ),
            )
          ],
        ));
  }
}
