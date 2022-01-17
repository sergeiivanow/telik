import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class ChannelsGroup {
  String group;
  List<dynamic> channels = [];

  ChannelsGroup({required this.group, required this.channels});
}

class Channel {
  String id;
  String logo;
  String name;
  String? timezone;
  String link;


  Channel(
      {required this.id, required this.logo, required this.name, this.timezone, required this.link});
}

class Channels extends ChangeNotifier {
  Channels() {
    loadJsonData();
  }

  List<dynamic> data = [];

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/channels.json');
    data = json.decode(jsonText);
    notifyListeners();
    return 'success';
  }
}