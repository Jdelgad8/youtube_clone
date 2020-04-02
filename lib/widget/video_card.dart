import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';

class VideoCard extends StatefulWidget {
  VideoCard(
      {Key key,
      this.titleLine1,
      this.titleLine2,
      this.source,
      this.avatarUrl,
      this.description})
      : super(key: key);

  final String titleLine1;
  final String titleLine2;
  final String avatarUrl;
  final String description;
  final String source;

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildVideoTitle() {
    if (widget.titleLine2.length <= 1) {
      return (Text(
        widget.titleLine1,
        style: TextStyle(fontSize: 18.0),
      ));
    } else {
      return (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.titleLine1,
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              widget.titleLine2,
              style: TextStyle(fontSize: 18.0),
            ),
          ]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                source: widget.source,
                context: context,
                quality: YoutubeQuality.HD,
                aspectRatio: 16 / 9,
                autoPlay: false,
                loop: false,
                showThumbnail: true,
                reactToOrientationChange: true,
                startFullScreen: false,
                controlsActiveBackgroundOverlay: true,
                controlsTimeOut: Duration(seconds: 3),
                playerMode: YoutubePlayerMode.DEFAULT,
                onError: (error) {
                  print(error);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        widget.avatarUrl,
                      ),
                      radius: 25.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[_buildVideoTitle()],
                              ),
                            ],
                          ),
                          Text(
                            widget.description,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
        ),
      ],
    );
  }
}
