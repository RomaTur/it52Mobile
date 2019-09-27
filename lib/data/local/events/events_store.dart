import 'package:flutter/cupertino.dart';
import 'package:it52_mobile/data/local/root_store.dart';
import 'package:it52_mobile/data/network/events_api.dart';
import 'package:it52_mobile/models/event/event.dart';
import 'package:mobx/mobx.dart';

part 'events_store.g.dart';

class EventsStore = _EventsStore with _$EventsStore;

abstract class _EventsStore with Store {
  RootStore rootStore;

  DateTime _updateTime;

  @observable
  ObservableList<Event> _allEvents = ObservableList();
  @observable
  ObservableList<Event> _futureEvents = ObservableList();
  @observable
  ObservableList<Event> _pastEvents = ObservableList();

  EventsApi eventsApi;

  _EventsStore(rootStore) {
    eventsApi = EventsApi();
  }

  @computed
  DateTime get updateTime => _updateTime;

  @computed
  List<Event> get futureEvents => _futureEvents;

  @computed
  List<Event> get pastEvents => _pastEvents;

  @action
  Future<void> getEvents() async {
    this._allEvents = ObservableList.of(await eventsApi.getEvents());
    this._updateTime = DateTime.now();
    updateEvents(events: this._allEvents, time: this._updateTime);
  }

  void updateEvents(
      {@required ObservableList<Event> events, @required DateTime time}) {
    this._futureEvents = ObservableList.of(
        events.reversed.where((el) => el.started_at.isAfter(time)));
    this._pastEvents =
        ObservableList.of(events.where((el) => el.started_at.isBefore(time)));
  }

  @override
  String toString() {
    return _allEvents.toString();
  }
}
