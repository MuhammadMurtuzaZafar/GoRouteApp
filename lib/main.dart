import 'package:flutter/material.dart';
import 'package:routesapp/routes/route.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:
      NyAppRouter.returnRouter(false).routeInformationParser,
      routerDelegate: NyAppRouter.returnRouter(false).routerDelegate,
    );
  }
}

