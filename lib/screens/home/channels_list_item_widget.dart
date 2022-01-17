import 'package:flutter/material.dart';
import '../player/player_screen_widget.dart';
import 'channels_modal.dart';

class ChannelsListItemWidget extends StatelessWidget {
  Channel? channel;
  ChannelsListItemWidget({Key? key, required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: 100,
        color: Colors.yellow,
        child: Column(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlayerScreenWidget(tvUrl: channel?.link ?? '')),
                );
              },
              title: Text(
                channel?.name ?? '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
