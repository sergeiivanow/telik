import 'package:flutter/material.dart';
import 'channels_list_widget.dart';
import 'channels_modal.dart';

class GroupListItemWidget extends StatelessWidget {
  final ChannelsGroup? channelsGroup;
  const GroupListItemWidget({Key? key, this.channelsGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 50,
          child:  Padding(
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
       
        ChannelsListWidget(channelsGroup: channelsGroup),
      ],
    );
  }
}
