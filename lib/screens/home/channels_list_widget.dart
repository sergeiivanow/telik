import 'package:flutter/material.dart';
import 'channels_list_item_widget.dart';

class ChannelsListWidget extends StatelessWidget {
  const ChannelsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          ChannelsListItemWidget(),
        ],
      ),
    );
  }
}
