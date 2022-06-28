import 'package:flutter/material.dart';
import 'package:flutter_application_1/chatScreen.dart';

class WPClone extends StatefulWidget {
  const WPClone({Key? key}) : super(key: key);

  @override
  State<WPClone> createState() => _WPCloneState();
}

class _WPCloneState extends State<WPClone> with SingleTickerProviderStateMixin {
  Widget title = Text("WhatsApp");
  late TabController tabController;

  bool showFab = true;

  Icon customIcon = const Icon(Icons.search);

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    tabController.addListener(() {
      if (tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: title,
          elevation: 0.7,
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                  child: Text("CHATS"),
                ),
                Tab(
                  child: Text("STATUS"),
                ),
                Tab(
                  child: Text("CALLS"),
                ),
              ]),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: IconButton(
                  icon: customIcon,
                  onPressed: () {
                    if (customIcon.icon == Icons.search) {
                      customIcon = Icon(Icons.cancel);
                      title = ListTile(
                        leading: Icon(
                          Icons.arrow_back,
                        ),
                        title: TextField(
                          decoration: InputDecoration(
                            hintText: 'Ara...',
                            border: InputBorder.none,
                          ),
                        ),
                      );
                    } else {
                      customIcon = Icon(Icons.search);
                      title = Text("WhatsApp");
                    }
                    setState(() {});
                  }),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
