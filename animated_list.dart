import 'package:flutter/material.dart';
import 'package:login_ui/main.dart';

import 'login.dart';

class AnList extends StatefulWidget {
  const AnList({super.key});

  @override
  State<AnList> createState() => _AnListState();
}

class _AnListState extends State<AnList> {
  final listkey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List'),
        leading: null,
        actions: null,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
