import 'package:it52_mobile/data/network/constants.dart';
import 'package:it52_mobile/data/network/rest_client.dart';
import 'package:it52_mobile/models/event/event.dart';

class EventsApi {
  Future<List<Event>> getEvents() async {
    try {
      final List<dynamic> d = await RestClient().get(EndPoints.getEvents);
      final list = List<Event>.from(d.map((i) => Event.fromJson(i)));
      return list;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
