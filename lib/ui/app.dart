import 'package:flutter/material.dart';
import 'package:it52_mobile/data/local/root_store.dart';
import 'package:it52_mobile/ui/future_screen/future_screen.dart';
import 'package:it52_mobile/ui/info_screen/info_screen.dart';
import 'package:it52_mobile/ui/past_screen/past_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootStore = Provider.of<RootStore>(context);
//    rootStore.eventsStore.getEvents();
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[FutureScreen(), PastScreen(), InfoScreen()],
          ),
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(
                child: Icon(
                  Icons.watch_later,
                  size: 38.0,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.watch_later,
                  size: 38.0,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.watch_later,
                  size: 38.0,
                ),
              )
            ],
            labelColor: Colors.black,
            labelPadding: EdgeInsets.all(18.0),
          ),
        ));
  }
}
