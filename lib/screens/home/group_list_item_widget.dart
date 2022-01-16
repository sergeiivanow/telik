import 'package:flutter/material.dart';
import 'channels_list_widget.dart';
import '../player/player_screen_widget.dart';
import 'channels_modal.dart';

class GroupListItemWidget extends StatelessWidget {
  final Channel? channel;
  const GroupListItemWidget({Key? key, this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlayerScreenWidget(url: channel?.link)),
            );
          },
          title: Text(channel?.name ?? ''),
        ),
        const ChannelsListWidget(),
      ],
    );
  }
}
