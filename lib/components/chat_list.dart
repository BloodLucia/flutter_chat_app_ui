import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  Widget _buildChatItem(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(
        faker.image.image(random: true, keywords: ['people']),
      )),
      title: Text(faker.person.lastName()),
      subtitle: Text(faker.randomGenerator.string(10)),
      trailing: Text(faker.date.justTime()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff292F3F),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
            _buildChatItem(context),
          ],
        ),
      ),
    );
  }
}
