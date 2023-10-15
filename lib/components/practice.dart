import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForomObsecure with ChangeNotifier {
  bool _togle = true;
  bool get togle => _togle;

  void ob(togle) {
    _togle = togle;

    notifyListeners();
  }
}

class MyPrctice extends StatefulWidget {
  const MyPrctice({super.key});

  @override
  State<MyPrctice> createState() => _MyPrcticeState();
}

class _MyPrcticeState extends State<MyPrctice> {
  @override
  Widget build(BuildContext context) {
    print('build');
    final provider = Provider.of<ForomObsecure>(context, listen: false);

    return Scaffold(
      body: Column(children: [
        Consumer<ForomObsecure>(builder: (context, value, child) {
          return TextFormField(
            obscureText: value.togle,
            decoration: InputDecoration(
                hintText: 'passoward',
                suffix: InkWell(
                    onTap: () {
                      provider.ob(value._togle = !value._togle);
                    },
                    child: value._togle
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off))),
          );
        })
      ]),
    );
  }
}
