import 'package:fashionstore/view/homepage/homepage.dart';

import 'package:fashionstore/view/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProvider(
          create: (context) => Mycounterscreenprovider(),
          child: home(),
        ));
  }
}
