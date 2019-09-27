import 'package:json_annotation/json_annotation.dart';

part 'organizer.g.dart';

@JsonSerializable()
class Organizer {
  int id;
  String nickname;

  // ignore: non_constant_identifier_names
  String full_name;

  // ignore: non_constant_identifier_names
  String image_url;
  String website;

  // ignore: non_constant_identifier_names
  String avatar_url;

  String url;

  Organizer(this.id, this.nickname, this.full_name, this.image_url,
      this.website, this.avatar_url, this.url);

  factory Organizer.fromJson(Map<String, dynamic> json) =>
      _$OrganizerFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizerToJson(this);
}
