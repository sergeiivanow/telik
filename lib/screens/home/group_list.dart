import 'package:flutter/material.dart';
import 'group_list_item.dart';
import 'package:provider/provider.dart';
import '../../viewModels/channels.dart';

class GroupList extends StatelessWidget {
  const GroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channels = context.watch<Channels>().data;
    return ListView.builder(
        padding: const EdgeInsets.only(top: 20.0 ),
        itemCount: channels.length,
        itemBuilder: (BuildContext context, int index) {
          return GroupListItem(
              channelsGroup: channels[index],
            );
        });
  }
}
