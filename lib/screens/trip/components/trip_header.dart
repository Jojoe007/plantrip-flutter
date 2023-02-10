import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TripHeader extends StatelessWidget {
  Widget _inputField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0,
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          TextField(
            onTap: () {},
            cursorColor: Colors.black,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "From",
                prefixIcon: Icon(
                  Ionicons.location,
                  color: Colors.black,
                )),
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          TextField(
            onTap: () {},
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "To",
              prefixIcon: Icon(
                Ionicons.location,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.grey[300],
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Trip Manager"),
                  Text(
                    "Go to ?",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              )
            ],
          ),
          _inputField(),
        ],
      )),
    );
  }
}
