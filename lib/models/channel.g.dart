// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      id: json['id'] as String,
      logo: json['logo'] as String,
      name: json['name'] as String,
      timezone: json['timezone'] as String?,
      link: json['link'] as String,
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'timezone': instance.timezone,
      'link': instance.link,
    };
