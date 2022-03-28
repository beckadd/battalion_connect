import 'package:battalion_connect/models/models.dart';
import 'package:flutter/material.dart';

import 'screens.dart';

class Summary extends StatelessWidget {
  static const String route = 'SummaryPage';

  Summary({Key? key}) : super(key: key);

  final bnName = 'Bull City Battalion';
  final accountImageUrl = 'https://picsum.photos/150';
  final List<Group> acctGroups = [
    Group(title: 'Hello World'),
    Group(title: 'Hello World'),
    Group(title: 'Hello World'),
    Group(title: 'Hello World'),
    Group(title: 'Hello World'),
    Group(title: 'Hello World'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bnName), actions: [
        IconButton(
          icon: Image.network(accountImageUrl),
          onPressed: () {},
        )
      ]),
      body: Column(
        children: [
          SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: acctGroups.length,
                itemBuilder: (context, index) {
                  return _groupIconButton(context, acctGroups[index]);
                },
              ),
              height: 100),
        ],
      ),
    );
  }

  Widget _groupIconButton(BuildContext context, Group group) {
    return IconButton(
        iconSize: 70,
        icon: Column(children: [
          Image.network(group.imgURL),
          Text(group.title, style: const TextStyle(fontSize: 12.0))
        ]),
        onPressed: () {}); //Need to setup the navigation to a group page),);
  }
}
