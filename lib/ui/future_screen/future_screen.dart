import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:it52_mobile/data/local/root_store.dart';
import 'package:provider/provider.dart';

class FutureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootStore = Provider.of<RootStore>(context);
    final eventsStore = rootStore.eventsStore;
    eventsStore.getEvents();
    return Observer(
      builder: (_) {
        return ListView.builder(
            itemCount: rootStore.eventsStore.futureEvents.length,
            itemBuilder: (_, index) => ListTile(
                title: Text(rootStore.eventsStore.futureEvents[index].title)));
      },
    );
  }
}
