import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/channelsGroup.dart';

class Channels extends ChangeNotifier {
  Channels() {
    loadJsonData();
  }

  late List<ChannelsGroup> data = [];

  Future<String> loadJsonData() async {
    try {
      final jsonText = await rootBundle.loadString('assets/channels.json') ;
      final  dataJson = json.decode(jsonText) as List<dynamic>;
      data = dataJson
        .map((dynamic e) => ChannelsGroup.fromJson(e as Map<String, dynamic>))
        .toList();   
      notifyListeners();
      return 'success';
    } catch (error) {
      return 'error';
    }
  }
}
