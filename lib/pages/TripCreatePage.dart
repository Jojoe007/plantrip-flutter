import 'package:flutter/material.dart';
import 'package:plantrip/utilities/DateTextFormmater.dart';
import 'package:plantrip/widgets/PlanListTile.dart';

class TripCreatePage extends StatefulWidget {
  const TripCreatePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TripCreatePageState();
}

class _TripCreatePageState extends State<TripCreatePage> {
  late ScrollController _scrollController;

  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  _goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

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
            icon: Icon(Icons.check),
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
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Trip Name',
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Provice',
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  TextField(
                    inputFormatters: [DateTextFormatter()],
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        labelText: 'Date',
                        isDense: true,
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.calendar_month)),
                        border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 18),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
            sliver: SliverReorderableList(
              itemCount: _items.length,
              itemBuilder: ((context, index) {
                return ReorderableDelayedDragStartListener(
                    key: Key('$index'),
                    index: index,
                    child: PlanListTile(
                      key: Key('${_items[index]}'),
                      data: '${_items[index]}',
                    ));
              }),
              onReorder: ((oldIndex, newIndex) {
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  final int item = _items.removeAt(oldIndex);
                  _items.insert(newIndex, item);
                });
              }),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

class ReorderableSliverList {}

// CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Container(
//               padding: EdgeInsets.all(18),
//               child: Column(children: [
//                 Container(
//                   child: TextField(
//                     decoration: InputDecoration(
//                         labelText: 'Trip Name',
//                         isDense: true,
//                         border: OutlineInputBorder()),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextField(
//                   inputFormatters: [DateTextFormatter()],
//                   keyboardType: TextInputType.datetime,
//                   decoration: InputDecoration(
//                       labelText: 'Date',
//                       isDense: true,
//                       suffixIcon: IconButton(
//                           onPressed: () {}, icon: Icon(Icons.calendar_month)),
//                       border: OutlineInputBorder()),
//                 ),
//               ]),
//             ),
//           ),
//           SliverReorderableList(
//               itemCount: 2,
//               itemBuilder: ((context, index) {
//                 return ReorderableDragStartListener(
//                   key: Key('$index'),
//                   index: index,
//                   child: Text('$index'),
//                 );
//               }),
//               onReorder: ((oldIndex, newIndex) {}))
//         ],
//       ),
