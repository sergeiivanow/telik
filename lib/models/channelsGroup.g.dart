// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channelsGroup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelsGroup _$ChannelsGroupFromJson(Map<String, dynamic> json) =>
    ChannelsGroup(
      group: json['group'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChannelsGroupToJson(ChannelsGroup instance) =>
    <String, dynamic>{
      'group': instance.group,
      'list': instance.list,
    };
