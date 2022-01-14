import 'package:flutter/material.dart';
import 'package:flutter_hls_parser/flutter_hls_parser.dart';
import 'dart:io';
import 'package:m3u/m3u.dart';

var data = ['пример', "отображения", "флет", "листа"];

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  void get() async {

     Uri playlistUri =
        Uri.parse('http://troya.tv/pl/3/61c771e1f0b48/playlist.m3u8');
    List<String> lines;
    try {
    var playList = await HlsPlaylistParser.create()
          .parseString(playlistUri, 'EXTM3U');
    } on ParserException catch (e) {
      print(e);
    }
  }

  Future<void> superget() async {
  final source = await File('playlist.m3u8').readAsString();
  final m3u = await M3uParser.parse(source);

  for (final entry in m3u) {
    print('Title: ${entry.title} Link: ${entry.link} Logo: ${entry.attributes['tvg-logo']}');
  }
}

  @override
  void initState() {
    super.initState();
    print('ehloo');
    get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, int index) {
        return Text(
          data[index],
        );
      },
    ));
  }
}
