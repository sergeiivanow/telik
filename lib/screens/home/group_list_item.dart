import 'package:flutter/material.dart';
import 'channels_list.dart';
import '../../models/channelsGroup.dart';

class GroupListItem extends StatelessWidget {
  final ChannelsGroup? channelsGroup;
  const GroupListItem({Key? key, this.channelsGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              channelsGroup?.group ?? '',
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        ChannelsList(channelsGroup: channelsGroup),
      ],
    );
  }
}
