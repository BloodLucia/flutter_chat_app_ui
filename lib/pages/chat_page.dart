import 'package:chateo_app/common/extensions.dart';
import 'package:chateo_app/components/chat_list.dart';
import 'package:chateo_app/components/stories_list.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats', style: TextStyle(fontSize: 28)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search, size: 30),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.emptySizedHeightBoxLow2x,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Stories',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            context.emptySizedHeightBoxLow2x,
            const StoriesList(),
            context.emptySizedHeightBoxLow2x,
            const ChatList(),
          ],
        ),
      ),
    );
  }
}
