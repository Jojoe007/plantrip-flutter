import 'package:flutter/material.dart';
import 'package:plantrip/models/AttractionCategory.dart';
import 'package:plantrip/test.dart';

class CategoryMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GategoryMenuState();
}

class _GategoryMenuState extends State<CategoryMenu>
    with TickerProviderStateMixin {
  late double screenWidth, screenHeight;

  late ScrollController _scrollController;
  late double _position = 0;

  late int _countMenu;

  @override
  void initState() {
    _scrollController = ScrollController();
    _countMenu = TESTDATA.ATT_CATEGORIES.length;

    _scrollController.addListener(_onScrollListener);

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  void _onScrollListener() {
    setState(() {
      _position = (_scrollController.offset /
              (_scrollController.position.maxScrollExtent / 100)) /
          2;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Column(
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(
              _countMenu,
              (index) {
                return _buildMenuIcon(TESTDATA.ATT_CATEGORIES.elementAt(index));
              },
            ),
          ]),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: Colors.grey[300],
            width: 100,
            height: 4,
            child: Stack(
              children: [
                Positioned(
                  left: _position,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: (_countMenu <= 5) ? 100 : 50,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildMenuIcon(final AttractionCategory attractionCategory) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 54,
        height: 74,
        // color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/png/home_active.png',
                width: 44,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                attractionCategory.title,
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall,
                maxLines: 2,
              )
            ]),
      ),
    );
  }
}
