import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:screen/screen.dart';
import 'package:video_player/video_player.dart';

class ChewieVideo extends StatefulWidget {
  final VideoPlayerController videoPlayerController;

  ChewieVideo({
    @required this.videoPlayerController,
  });

  @override
  State createState() {
    return _CheWieVideoState();
  }
}

class _CheWieVideoState extends State<ChewieVideo> {
  ChewieController
  _chewieController; // determines how the player should work and how should it look like
  bool keepScreenOn = true;

  @override
  void initState() {
    super.initState();
    // Wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      looping: false,
      allowedScreenSleep: false,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        print(errorMessage);
        return Center(
          child: Text(
            "Sorry, video not available",
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
    _chewieController.videoPlayerController.addListener(listener);
    Screen.keepOn(true);
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }

  void listener() {
    if (_chewieController.videoPlayerController.value.initialized) {
      if (!_chewieController.videoPlayerController.value.isPlaying) {
        Screen.keepOn(false);
      } else {
        Screen.keepOn(true);
      }
    }
  }

  @override
  void didUpdateWidget(ChewieVideo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // IMPORTANT to dispose of all the used resources
    super.dispose();
    Screen.keepOn(false);
    widget.videoPlayerController.pause();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
