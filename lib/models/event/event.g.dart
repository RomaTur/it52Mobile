// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
    json['id'] as int,
    json['title'] as String,
    json['description'] as String,
    json['image_url'] as String,
    json['place'] as String,
    json['started_at'] == null
        ? null
        : DateTime.parse(json['started_at'] as String),
    json['url'] as String,
    json['organizer'] == null
        ? null
        : Organizer.fromJson(json['organizer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.image_url,
      'place': instance.place,
      'started_at': instance.started_at?.toIso8601String(),
      'url': instance.url,
      'organizer': instance.organizer,
    };
