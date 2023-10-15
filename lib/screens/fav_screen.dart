import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/components/utils.dart';
import 'package:provider_flutter/provider/favorite_provider.dart';

class FavScreen extends StatefulWidget {
  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    final favprovider =
        Provider.of<FavouriteItemProvider>(context, listen: false);
    print('build');
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<FavouriteItemProvider>(
                    builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedItems.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    title: Text('item' + index.toString()),
                    trailing: Icon(value.selectedItems.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border),
                  );
                });
              }),
        )
      ]),
    );
  }
}
