import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  static const String route = 'GroupPage';

  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GROUP_NAME = 'Group 2';
    return Scaffold(
      appBar: AppBar(title: Text(GROUP_NAME)),
      bottomNavigationBar: NavigationBar(
        destinations: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.article),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
