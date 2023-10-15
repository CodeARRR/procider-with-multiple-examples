import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 10), (timer) {});
  }

  @override
  Widget build(BuildContext context) {
    print('is it change');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(
                child: Text(
              '$count',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
          print(count++);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
