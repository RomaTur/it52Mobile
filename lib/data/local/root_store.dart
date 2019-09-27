import 'package:it52_mobile/data/local/events/events_store.dart';

class RootStore {
  EventsStore eventsStore;

  RootStore() {
    this.eventsStore = EventsStore(this);
  }
}
