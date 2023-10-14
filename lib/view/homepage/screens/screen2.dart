import 'package:fashionstore/view/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 150,
                    width: 300,
                    color: Colors.amber,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            //child: ,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Consumer<Mycounterscreenprovider>(
                              builder: (context, value, child) => Text(
                                  Provider.of<Mycounterscreenprovider>(context)
                                      .price
                                      .toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  )),
                            ),
                            Consumer<Mycounterscreenprovider>(
                              builder: (context, value, child) => Text(
                                  Provider.of<Mycounterscreenprovider>(context)
                                      .count
                                      .toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  )),
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Provider.of<Mycounterscreenprovider>(
                                                context,
                                                listen: false)
                                            .incrementCounter();
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        Provider.of<Mycounterscreenprovider>(
                                                context,
                                                listen: false)
                                            .decrementcounter();
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
