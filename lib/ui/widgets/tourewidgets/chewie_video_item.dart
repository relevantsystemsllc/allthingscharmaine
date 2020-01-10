import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
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
  ChewieController _chewieController;

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
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }

  @override
  void dispose() {
    // IMPORTANT to dispose of all the used resources
    super.dispose();
    //widget.videoPlayerController.dispose();
    _chewieController.dispose();


  }
}
