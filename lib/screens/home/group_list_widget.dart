import 'package:flutter/material.dart';
import 'group_list_item_widget.dart';
import 'package:provider/provider.dart';
import 'channels_modal.dart';

class GroupListWidget extends StatelessWidget {
  const GroupListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channels = context.watch<Channels>().data;
    return ListView.builder(
        itemCount: channels == null ? 0 : channels.length,
        itemBuilder: (BuildContext context, int index) {
          return GroupListItemWidget(
            channel: Channel(
              name: channels[index]['name'],
              group: channels[index]['group'],
              id: channels[index]['id'],
              link: channels[index]['link'],
              logo: channels[index]['logo'],
            ),
          );
        });
  }
}
