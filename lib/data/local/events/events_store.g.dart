// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EventsStore on _EventsStore, Store {
  Computed<DateTime> _$updateTimeComputed;

  @override
  DateTime get updateTime =>
      (_$updateTimeComputed ??= Computed<DateTime>(() => super.updateTime))
          .value;
  Computed<List<Event>> _$futureEventsComputed;

  @override
  List<Event> get futureEvents => (_$futureEventsComputed ??=
          Computed<List<Event>>(() => super.futureEvents))
      .value;
  Computed<List<Event>> _$pastEventsComputed;

  @override
  List<Event> get pastEvents =>
      (_$pastEventsComputed ??= Computed<List<Event>>(() => super.pastEvents))
          .value;

  final _$_allEventsAtom = Atom(name: '_EventsStore._allEvents');

  @override
  ObservableList<Event> get _allEvents {
    _$_allEventsAtom.context.enforceReadPolicy(_$_allEventsAtom);
    _$_allEventsAtom.reportObserved();
    return super._allEvents;
  }

  @override
  set _allEvents(ObservableList<Event> value) {
    _$_allEventsAtom.context.conditionallyRunInAction(() {
      super._allEvents = value;
      _$_allEventsAtom.reportChanged();
    }, _$_allEventsAtom, name: '${_$_allEventsAtom.name}_set');
  }

  final _$_futureEventsAtom = Atom(name: '_EventsStore._futureEvents');

  @override
  ObservableList<Event> get _futureEvents {
    _$_futureEventsAtom.context.enforceReadPolicy(_$_futureEventsAtom);
    _$_futureEventsAtom.reportObserved();
    return super._futureEvents;
  }

  @override
  set _futureEvents(ObservableList<Event> value) {
    _$_futureEventsAtom.context.conditionallyRunInAction(() {
      super._futureEvents = value;
      _$_futureEventsAtom.reportChanged();
    }, _$_futureEventsAtom, name: '${_$_futureEventsAtom.name}_set');
  }

  final _$_pastEventsAtom = Atom(name: '_EventsStore._pastEvents');

  @override
  ObservableList<Event> get _pastEvents {
    _$_pastEventsAtom.context.enforceReadPolicy(_$_pastEventsAtom);
    _$_pastEventsAtom.reportObserved();
    return super._pastEvents;
  }

  @override
  set _pastEvents(ObservableList<Event> value) {
    _$_pastEventsAtom.context.conditionallyRunInAction(() {
      super._pastEvents = value;
      _$_pastEventsAtom.reportChanged();
    }, _$_pastEventsAtom, name: '${_$_pastEventsAtom.name}_set');
  }

  final _$getEventsAsyncAction = AsyncAction('getEvents');

  @override
  Future<void> getEvents() {
    return _$getEventsAsyncAction.run(() => super.getEvents());
  }
}
