import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantrip/pages/SearchPage.dart';
import 'package:plantrip/test.dart';
import 'package:plantrip/widgets/TravelCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _controller;
  late Color _appBarColor = Colors.transparent;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: ทำ Card แนะนำร้านดังอันใหญ่สุด
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: _appBarColor,
          shadowColor: Colors.transparent,
          leading: const Center(
              child: Text(
            'Tt',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
          title: GestureDetector(
            onTap: _openSearchPage,
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText: 'Search',
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(6),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.map_outlined), onPressed: _openMap),
          ],
          iconTheme: IconThemeData(size: 32),
        ),
        body: CustomScrollView(
          controller: _controller,
          slivers: [
            // GridView.builder(
            //     padding: EdgeInsets.all(12),
            //     itemCount: TESTDATA.TRAVELDATA.length,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 12,
            //       crossAxisSpacing: 6,
            //     ),
            //     itemBuilder: ((context, index) {
            //       return TravelCard(
            //         data: TESTDATA.TRAVELDATA.elementAt(index),
            //         beforePage: this,
            //       );
            //     })),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 200,
              child: Image.network(
                'https://thinkrcg.com/wp-content/uploads/2015/12/Palace_of_Westminster_London-16-9.jpg',
                fit: BoxFit.fitWidth,
              ),
            )),
            SliverPadding(
              padding: EdgeInsets.all(12),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 6,
                  // mainAxisExtent: 200, //ความสูงตามแกนหลัก
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return TravelCard(
                      data: TESTDATA.TRAVELDATA.elementAt(index),
                      beforePage: this,
                    );
                  },
                  childCount: TESTDATA.TRAVELDATA.length,
                ),
              ),
            ),
          ],
        ));
  }

  void _scrollListener() {
    if (_controller.offset <= _controller.position.minScrollExtent) {
      setState(() {
        _appBarColor = Colors.transparent;
      });
    } else {
      setState(() {
        _appBarColor = Colors.lightBlue;
      });
    }
  }

  void _openSearchPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => SearchPage())));
    print('Goto Search Page!');
  }

  void _openMap() {
    print('Map Click!');
  }

  void _openHistory() {
    print('History Click!');
  }
}
