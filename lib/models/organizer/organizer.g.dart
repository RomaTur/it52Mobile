// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organizer _$OrganizerFromJson(Map<String, dynamic> json) {
  return Organizer(
    json['id'] as int,
    json['nickname'] as String,
    json['full_name'] as String,
    json['image_url'] as String,
    json['website'] as String,
    json['avatar_url'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$OrganizerToJson(Organizer instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'full_name': instance.full_name,
      'image_url': instance.image_url,
      'website': instance.website,
      'avatar_url': instance.avatar_url,
      'url': instance.url,
    };
