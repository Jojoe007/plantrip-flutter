import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:plantrip/screens/home/components/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 132,
        padding: EdgeInsets.symmetric(horizontal: 16),
        color: Colors.grey[300],
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "Plan Trip",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Ionicons.airplane,
                    size: 32,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("แอพคุณภาพคู่ควรชาวไทย"),
                  Text("Made by Jojoe007")
                ],
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ));
  }
}
