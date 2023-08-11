import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final userid;
  final username;

  Profile({this.userid, this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userid!),
            Text(username!),

          ],
        ),
      ),
    );
  }
}
