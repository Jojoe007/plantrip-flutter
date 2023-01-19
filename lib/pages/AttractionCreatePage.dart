import 'package:flutter/material.dart';

class CreateAttractionPage extends StatelessWidget {
  const CreateAttractionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
