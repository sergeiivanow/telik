import 'package:flutter/material.dart';
import 'channels_list_item_widget.dart';
import 'channels_modal.dart';

class ChannelsListWidget extends StatelessWidget {
  final ChannelsGroup? channelsGroup;
  const ChannelsListWidget({Key? key, required this.channelsGroup})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: channelsGroup?.channels == null
              ? 0
              : channelsGroup?.channels.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return ChannelsListItemWidget(
                channel: Channel(
              id: channelsGroup?.channels[index]['id'],
              link: channelsGroup?.channels[index]['link'],
              logo: channelsGroup?.channels[index]['logo'],
              name: channelsGroup?.channels[index]['name'],
            ));
          }),
    );
  }
}
