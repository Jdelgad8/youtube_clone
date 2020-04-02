import 'package:flutter/material.dart';

import 'widget/video_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red[600],
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home, color: Colors.brown[800]),
                ),
                Tab(
                  icon: Icon(Icons.whatshot, color: Colors.brown[800]),
                ),
                Tab(
                  icon: Icon(Icons.subscriptions, color: Colors.brown[800]),
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.brown[800]),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  VideoCard(
                    titleLine1: "How to Apologize (A Guide for",
                    titleLine2: "People Who Suck At It)",
                    source: "EdinmmFxTuI&t",
                    avatarUrl:
                        "https://yt3.ggpht.com/a/AATXAJwkLP61GfxJYpLP7VYaeccrEJxd3Ky5W8E4Xw=s288-c-k-c0xffffffff-no-rj-mo",
                    description: "||Superwoman|| . 1M views . 1 month ago",
                  ),
                  VideoCard(
                    titleLine1: "Ballon Popping: Miranda's Biggest",
                    titleLine2: "Fear | Tyler Oakley",
                    source: "BozG28v4HNc",
                    avatarUrl:
                        "https://yt3.ggpht.com/a/AATXAJzIbo6Oo0cwpKWQOFmmo8smkXOJT2ums4sZVw=s48-c-k-c0xffffffff-no-rj-mo",
                    description: "Tyler Oakley . 4M views . 7 month ago",
                  ),
                  VideoCard(
                    titleLine1: "Things I Miss About High School",
                    titleLine2: "",
                    source: "bvJMftkYMEA",
                    avatarUrl:
                        "https://yt3.ggpht.com/a/AATXAJwkLP61GfxJYpLP7VYaeccrEJxd3Ky5W8E4Xw=s288-c-k-c0xffffffff-no-rj-mo",
                    description: "||Superwoman|| . 1M views . 1 month ago",
                  ),
                ],
              ),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
