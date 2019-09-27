import 'package:it52_mobile/data/network/events_api.dart';
import 'package:test/test.dart';

void main() {
  group("events api", () {
    EventsApi eventsApi = EventsApi();
    test("get events", () async {
      final response = await eventsApi.getEvents();
//      expect(response);
    });
  });
}
