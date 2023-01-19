import 'package:flutter/material.dart';
import 'package:plantrip/pages/LoginPage.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AccountScreenState();
  }
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    void _openLoginScreen() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => LoginPage())));
    }

    return SafeArea(
        minimum: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 20,
              ),
            ),
            Container(
              child: Image.asset('assets/images/hello.png'),
            ),
            Container(
              child: SizedBox(
                height: 20,
              ),
            ),
            Container(
              child: ElevatedButton(
                  child: Text('Login / Register'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(360, 32),
                      padding: EdgeInsets.only(left: 60, right: 60)),
                  onPressed: _openLoginScreen),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Setting',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ));
  }
}
