import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(
              height: 10,
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alperen Sari",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "12.45 PM",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                  ),
                ],
              ),
              subtitle: Text(
                "Neredesin Laaaaa...",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        );
      },
    );
  }
}
