import 'package:flutter/material.dart';
import 'group_list_widget.dart';
import 'package:provider/provider.dart';
import 'channels_modal.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Channels(),
        child: Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              title: const Text('Телик')),
          body: const GroupListWidget(),
        ));
  }
}
