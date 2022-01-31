import 'package:flutter/material.dart';
import 'group_list_item_widget.dart';
import 'package:provider/provider.dart';
import '../../models/channels.dart';

class GroupList extends StatelessWidget {
  const GroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = context.watch<Channels>().data;
    return ListView.builder(
        padding: const EdgeInsets.only(top: 20.0 ),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return GroupListItemWidget(
              channelsGroup: ChannelsGroup(
                  group: data[index]['group'],
                  channels: data[index]['list']));
        });
  }
}
