import 'package:flutter/material.dart';

class ValueNotifierListner extends StatelessWidget {
  ValueNotifier<int> _counter = ValueNotifier(0);
  ValueNotifier<bool> togle = ValueNotifier(true);
  // we use value notifier for  which act like ha variable it can change it's value

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
        body: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: togle,
                builder: (context, value, child) {
                  return TextFormField(
                    obscureText: togle.value,
                    decoration: InputDecoration(
                        hintText: 'enter passoward',
                        suffix: InkWell(
                            onTap: () {
                              togle.value = !togle.value;
                            },
                            child: Icon(togle.value
                                ? Icons.visibility_off
                                : Icons.visibility))),
                  );
                }),
            Center(
              child: ValueListenableBuilder(
                  valueListenable: _counter,
                  builder: (context, value, child) {
                    return Center(
                      child: Text(
                        _counter.value.toString(),
                        style: TextStyle(fontSize: 40),
                      ),
                    );
                  }),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _counter.value++;
            print(_counter);
          },
        ));
  }
}
