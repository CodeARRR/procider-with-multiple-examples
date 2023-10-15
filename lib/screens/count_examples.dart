import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/provider/count_provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('counter example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child:
                Consumer<CountProvider>(builder: (context, value, child) {
              return Text(
                countProvider.countt.toString(),
                style: TextStyle(fontSize: 40),
              );
            })),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        countProvider.SetCount();
      }),
    );
  }
}
