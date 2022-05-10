import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoListView extends StatefulWidget {
  final String urlYoutube;
  const YoutubeVideoListView({Key? key, required this.urlYoutube})
      : super(key: key);

  @override
  State<YoutubeVideoListView> createState() => _YoutubeVideoListViewState();
}

class _YoutubeVideoListViewState extends State<YoutubeVideoListView> {
  YoutubePlayerController? controller;
  void runYoutubePlayer() {
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.urlYoutube) as String,
      flags: const YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    controller?.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller!),
      builder: (context, player) {
        return SizedBox(
          width: 1500,
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 230,
                    color: Colors.grey,
                    child: player,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 130,
                    width: 230,
                    color: Colors.grey,
                    child: const YoutubeVideoListView(
                      urlYoutube: 'https://www.youtube.com/watch?v=Tu96yevGMEA',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 130,
                    width: 230,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
