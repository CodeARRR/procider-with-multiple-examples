import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/provider/count_provider.dart';
import 'package:provider_flutter/provider/example_one.dart';

class ExampleOne extends StatefulWidget {
  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ExampleOneProvider>(context, listen: true);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text(' example one'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            print('consumer widget is working');
            return Slider(
                min: 0,
                max: 1,
                value: provider.value,
                onChanged: (val) {
                  provider.setValue(val);
                });
          }),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(provider.value)),
                  child: Center(child: Text('Container 1')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(provider.value)),
                  child: Center(child: Text('Container 1')),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
