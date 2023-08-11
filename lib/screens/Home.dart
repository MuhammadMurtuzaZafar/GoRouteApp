import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constant/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Go Router Demo'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(Uri(path: '/about').toString());
                },
                child: const Text('About Page')),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context)
                      .pushNamed(MyAppRouteConstants.profileRouteName, params: {
                    'username': 'User Name Ali',
                    'userid': 'User ID 123'
                  });
                },
                child: const Text('Profile Page')),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context)
                      .pushNamed(MyAppRouteConstants.contactUsRouteName);
                },
                child: const Text('ContactUs Page')),
          ],
        ),
      ),
    );
  }
}
