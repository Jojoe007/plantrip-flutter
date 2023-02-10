import 'package:flutter/material.dart';

class CategoryMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GategoryMenuState();
}

class _GategoryMenuState extends State<CategoryMenu>
    with TickerProviderStateMixin {
  late ScrollController _scrollController;

  double value = 100;
  Color colorValue = Colors.lightBlue;

  @override
  void initState() {
    _scrollController = ScrollController();

    // _scrollController.addListener(() {
    //   print(_scrollController.offset);
    //   setState(() {
    //     value = _scrollController.offset - 300;
    //   });
    // });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(
              10,
              (index) {
                return _buildMenuIcon("ร้านอาหาร");
              },
            ),
          ]),
        ),
        SizedBox(
          width: 100,
          child: LinearProgressIndicator(
            value: value,
            color: colorValue,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        )
      ],
    );
  }

  Widget _buildMenuIcon(final String title) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        width: 54,
        height: 68,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/png/home_active.png',
                width: 44,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 11),
                maxLines: 1,
              )
            ]),
      ),
    );
  }
}
