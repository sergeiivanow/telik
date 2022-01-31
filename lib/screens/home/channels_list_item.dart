import 'package:flutter/material.dart';
import '../video_player/video_player_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../models/channel.dart';

class ChannelsListItem extends StatelessWidget {
  final Channel? channel;
  const ChannelsListItem({Key? key, required this.channel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    VideoPlayerScreen(tvUrl: channel?.link ?? '')),
          );
        },
        child: SizedBox(
            width: 100,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CachedNetworkImage(
                    imageUrl: channel?.logo ?? '',
                  ),
                ),
                Text(
                  channel?.name ?? '',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
