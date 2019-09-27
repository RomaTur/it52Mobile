import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:it52_mobile/data/local/root_store.dart';
import 'package:provider/provider.dart';

class PastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootStore = Provider.of<RootStore>(context);

    return Observer(
      builder: (_) {
        return ListView.builder(
            itemCount: rootStore.eventsStore.pastEvents.length,
            itemBuilder: (_, index) => ListTile(
                title: Text(rootStore.eventsStore.pastEvents[index].title)));
      },
    );
  }
}
