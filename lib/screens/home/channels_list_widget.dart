import 'package:flutter/material.dart';
import 'channels_list_item_widget.dart';
import '../../models/channelsGroup.dart';

class ChannelsListWidget extends StatelessWidget {
  final ChannelsGroup? channelsGroup;
  const ChannelsListWidget({Key? key, required this.channelsGroup})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: channelsGroup?.list == null
              ? 0
              : channelsGroup?.list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return ChannelsListItemWidget(
                channel: channelsGroup?.list[index]);
          }),
    );
  }
}
