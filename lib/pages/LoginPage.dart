import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _goBack() {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: _goBack,
        ),
      ),
      body: SafeArea(
          minimum: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Column(children: [
              SizedBox(height: 100),
              Text('Trans Travel'),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Username',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Password',
                    border: OutlineInputBorder()),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(360, 32),
                        padding: EdgeInsets.only(left: 60, right: 60)),
                    onPressed: () {}),
              ),
              Text('OR'),
              ElevatedButton(
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(360, 32),
                      padding: EdgeInsets.only(left: 60, right: 60)),
                  onPressed: () {}),
            ]),
          )),
    );
  }
}
