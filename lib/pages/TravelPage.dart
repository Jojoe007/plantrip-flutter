import 'package:flutter/material.dart';
import 'package:plantrip/models/TravelModel.dart';
import 'package:plantrip/test.dart';

// ถ้าทำเป็น Fetch API แล้วต้องรับข้อมูลแค่ ID พอ

class TravelPage extends StatefulWidget {
  final TravelModel data;
  // final Widget beforePage;

  const TravelPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  late bool isSaved;

  @override
  void initState() {
    super.initState();

    if (TESTDATA.TRAVELSAVED.contains(widget.data)) {
      isSaved = true;
    } else {
      isSaved = false;
    }
  }

  @override
  void didUpdateWidget(covariant TravelPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    void _close() {
      Navigator.pop(context);
    }

    void _addToSaved() {
      if (!TESTDATA.TRAVELSAVED.contains(widget.data)) {
        TESTDATA.TRAVELSAVED.add(widget.data);
        setState(() {
          isSaved = true;
        });
      } else {
        TESTDATA.TRAVELSAVED.remove(widget.data);
        setState(() {
          isSaved = false;
        });
      }
    }

    Widget _savedIcon() {
      return (isSaved)
          ? IconButton(
              icon: Icon(Icons.star),
              onPressed: _addToSaved,
            )
          : IconButton(
              icon: Icon(Icons.star_outline),
              onPressed: _addToSaved,
            );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: _close,
        ),
        title: Text(widget.data.title),
        actions: [_savedIcon()],
        iconTheme: IconThemeData(size: 32),
      ),
      body: Container(
        // padding: EdgeInsets.all(12),
        child: Column(children: [
          Image(
            image: NetworkImage(widget.data.image),
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.data.title,
                style: TextStyle(fontSize: 32),
              ),
              Text(widget.data.des)
            ],
          )
        ]),
      ),
    );
  }
}
