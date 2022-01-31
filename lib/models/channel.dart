import 'package:json_annotation/json_annotation.dart';
part 'channel.g.dart';

@JsonSerializable()
class Channel {
  String id;
  String logo;  
  String name;
  String? timezone;
  String link;

  Channel(
      {required this.id, required this.logo, required this.name, this.timezone, required this.link});

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelToJson(this);

}