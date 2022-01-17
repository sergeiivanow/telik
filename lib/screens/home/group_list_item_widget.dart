import 'package:flutter/material.dart';
import 'channels_list_widget.dart';
import 'channels_modal.dart';

class GroupListItemWidget extends StatelessWidget {
  final ChannelsGroup? channelsGroup;
  const GroupListItemWidget({Key? key, this.channelsGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(channelsGroup?.group ?? ''),
        ),
       ChannelsListWidget(channelsGroup: channelsGroup),
      ],
    );
  }
}
