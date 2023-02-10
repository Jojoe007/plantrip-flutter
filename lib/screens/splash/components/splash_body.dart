import 'package:flutter/material.dart';
import 'package:plantrip/screens/splash/components/splash_content.dart';
import 'package:plantrip/utils/size_utils.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              child: PageView.builder(
            onPageChanged: ((value) {
              setState(() {
                currentPage = value;
              });
            }),
            itemCount: splashData.length,
            itemBuilder: (context, index) => SplashContent(
              text: splashData[index]["text"],
              image: splashData[index]["image"],
            ),
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                Spacer(),
                Row(
                  children: List.generate(
                      splashData.length, (index) => buildDot(index: index)),
                ),
                Spacer(flex: 3),
              ],
            ),
          ))
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
