import 'package:flutter/material.dart';
import '../player/player_screen_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../models/channel.dart';

class ChannelsListItemWidget extends StatelessWidget {
  final Channel? channel;
  const ChannelsListItemWidget({Key? key, required this.channel})
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
                    PlayerScreenWidget(tvUrl: channel?.link ?? '')),
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
