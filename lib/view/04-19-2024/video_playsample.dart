import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerSample extends StatefulWidget {
  const VideoPlayerSample({Key? key}) : super(key: key);

  @override
  State<VideoPlayerSample> createState() => _VideoPlayerSampleState();
}

class _VideoPlayerSampleState extends State<VideoPlayerSample> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  final List<String> videoUrls = [
    'videos/video1.mp4',
    'videos/video2.mp4',
  ];
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    initializePlayer(videoUrls[selectedIndex]);
  }

  void initializePlayer(String url) {
    videoPlayerController = VideoPlayerController.asset(url)
      ..initialize().then((_) {
        setState(() {
          chewieController = ChewieController(
            videoPlayerController: videoPlayerController,
            autoPlay: false,
            looping: false,
          );
        });
      });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: videoPlayerController.value.aspectRatio,
              child: Chewie(controller: chewieController),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: videoUrls.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      videoPlayerController.pause();
                      videoPlayerController.dispose();
                      chewieController.dispose();
                      initializePlayer(videoUrls[selectedIndex]);
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    color: index == selectedIndex
                        ? Colors.blue.withOpacity(0.5)
                        : Colors.transparent,
                    child: Text(
                      'Video ${index + 1}',
                      style: TextStyle(
                        color: index == selectedIndex
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

