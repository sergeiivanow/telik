import 'package:json_annotation/json_annotation.dart';
import 'channel.dart';
part 'channelsGroup.g.dart';

@JsonSerializable()
class ChannelsGroup {
  String group;
  List<Channel> list;

  ChannelsGroup({required this.group, required this.list});

  factory ChannelsGroup.fromJson(Map<String, dynamic> json) => _$ChannelsGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsGroupToJson(this);
}