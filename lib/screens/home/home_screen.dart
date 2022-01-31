import 'package:flutter/material.dart';
import 'group_list.dart';
import 'package:provider/provider.dart';
import '../../../../models/channels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
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
          body: const GroupList(),
        ));
  }
}
