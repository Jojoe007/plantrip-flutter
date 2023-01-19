import 'package:flutter/material.dart';
import 'package:plantrip/pages/AttractionCreatePage.dart';
import 'package:plantrip/pages/TripCreatePage.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    _gotoCreateTravelTrip() {
      Navigator.push(context,
          MaterialPageRoute(builder: (builder) => const TripCreatePage()));
    }

    _gotoAddTravelAttaction() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const CreateAttractionPage()));
    }

    return SafeArea(
        child: Container(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: _gotoCreateTravelTrip,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.2, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.lightBlue.shade300,
                          Colors.blueAccent,
                        ],
                      )),
                  child: SizedBox.expand(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Create\nTravel\nTrip',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.place_rounded,
                            size: 32,
                          ),
                          Icon(
                            Icons.backpack,
                            size: 32,
                          ),
                          Icon(
                            Icons.train,
                            size: 32,
                          ),
                        ],
                      )
                    ],
                  ))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6),
            child: VerticalDivider(
              thickness: 2,
              color: Colors.lightBlue.shade700,
            ),
          ),
          Expanded(
              child: GestureDetector(
            onTap: _gotoAddTravelAttaction,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1.2, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue,
                        Colors.lightBlue.shade300,
                        Colors.blueAccent,
                      ],
                    )),
                child: SizedBox.expand(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Add\nTravel\nAttraction',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.hotel,
                          size: 32,
                        ),
                        Icon(
                          Icons.restaurant,
                          size: 32,
                        ),
                        Icon(
                          Icons.attractions,
                          size: 32,
                        )
                      ],
                    )
                  ],
                ))),
          )),
        ],
      ),
    ));
  }
}
