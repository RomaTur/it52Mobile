import 'package:it52_mobile/models/organizer/organizer.dart';
import 'package:json_annotation/json_annotation.dart';

part "event.g.dart";

@JsonSerializable()
class Event {
  int id;
  String title;
  String description;

  // ignore: non_constant_identifier_names
  String image_url;
  String place;

  // ignore: non_constant_identifier_names
  DateTime started_at;

  String url;

  Organizer organizer;

  Event(this.id, this.title, this.description, this.image_url, this.place,
      this.started_at, this.url, this.organizer);

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}

//{
//"id": 423,
//"title": "DevFest Gorky 2019",
//"description": "Welcome на самую масштабную IT-конференцию Нижнего Новгорода DevFest Gorky.\r\n\r\nВ этом году DevFest Gorky продлится два дня!\r\n\r\n**15 ноября** мы посвятим воркшопам. Целый день практических занятий с ведущими экспертами.\r\n**16 ноября** вас ждёт два потока потрясающих спикеров, а все выступления, впервые, будут на английском языке.\r\n\r\nЕщё больше партнеров порадуют крутыми стендами и увлекательными конкурсами 🎊\r\nВас ждёт много всего интересного, узнать все мельчайшие подробности и купить билет можно на [нашем сайте](https://devfest.gdgnn.ru/).",
//"image_url": "https://assets.it52.info/uploads/production/event/title_image/423/square_500_9e2227540c.jpg",
//"place": "г Нижний Новгород, ул Академика Сахарова, д 4",
//"started_at": "2019-11-15T10:00:00.000+03:00",
//"started_at_js": 1573801200000.0,
//"url": "http://it52.info/events/2019-11-15-devfest-gorky-2019",
//"location": null,
//"organizer": {
//"id": 726,
//"nickname": "aleksandr_denisov",
//"full_name": "Александр Денисов",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/uploads/production/user/avatar_image/726/square_150_4fb1916dd8.jpg",
//"url": "http://it52.info/users/aleksandr_denisov"
//},
//"tag_list": [
//"gdg",
//"devfest"
//],
//"participants": [
//{
//"id": 2507,
//"nickname": "andorus911",
//"full_name": "Андрей Логинов",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/uploads/production/user/avatar_image/2507/square_150_da4dbdb63c.jpg",
//"url": "http://it52.info/users/andorus911"
//},
//{
//"id": 3474,
//"nickname": "",
//"full_name": "kceni_21_01_99@mail.ru",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/assets/avatars_fallback/square_150_default-96bedf7fe9b3ab4237b5fe10fa50e18984a1831c5d8d58af3f992a9f0d71c3ea.png",
//"url": "http://it52.info/users/kceni_21_01_99-mail-ru"
//},
//{
//"id": 3139,
//"nickname": "artky",
//"full_name": "Artemy Kuznetsovsky",
//"website": null,
//"bio": "Руководитель Digital отдела консалтингового агенства «BSQ Digital»;\r\nUX/UI дизайнер\r\n",
//"avatar_url": "https://assets.it52.info/uploads/production/user/avatar_image/3139/square_150_3653061ef1.jpg",
//"url": "http://it52.info/users/artky"
//},
//{
//"id": 3289,
//"nickname": "Julia Bareeva",
//"full_name": "Julia Bareeva",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/uploads/production/user/avatar_image/3289/square_150_bc47ae219c.jpg",
//"url": "http://it52.info/users/julia-bareeva"
//},
//{
//"id": 1620,
//"nickname": "Алексей Морозов",
//"full_name": "Алексей Морозов",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/uploads/production/user/avatar_image/1620/square_150_57ea932abe.jpg",
//"url": "http://it52.info/users/a1exy-moroz-gmail-com"
//},
//{
//"id": 2137,
//"nickname": "",
//"full_name": "olga_latkina@mail.ru",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/assets/avatars_fallback/square_150_default-96bedf7fe9b3ab4237b5fe10fa50e18984a1831c5d8d58af3f992a9f0d71c3ea.png",
//"url": "http://it52.info/users/olga_latkina-mail-ru"
//},
//{
//"id": 130,
//"nickname": "Anton Pletinsky",
//"full_name": "Anton Pletinsky",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/uploads/production/user/avatar_image/130/square_150_d23d617330.jpg",
//"url": "http://it52.info/users/anton-pletinsky"
//},
//{
//"id": 2490,
//"nickname": "",
//"full_name": "mnorton@mail.ru",
//"website": null,
//"bio": null,
//"avatar_url": "https://assets.it52.info/assets/avatars_fallback/square_150_default-96bedf7fe9b3ab4237b5fe10fa50e18984a1831c5d8d58af3f992a9f0d71c3ea.png",
//"url": "http://it52.info/users/mnorton-mail-ru"
//}
//]
//},
