
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'error_message_widget.dart';

class VideoPlayeWidget extends StatefulWidget {
  const VideoPlayeWidget({
    Key? key,
    required this.videoPlayerController,
    this.looping = false,
  }) : super(key: key);

  final VideoPlayerController videoPlayerController;
  final bool looping;

  @override
  State<VideoPlayeWidget> createState() => _VideoPlayeWidgetState();
}

class _VideoPlayeWidgetState extends State<VideoPlayeWidget> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      autoInitialize: true,
      aspectRatio: 16 / 9,
      errorBuilder: (_, errorMessage) => ErrorMessageWidget(
        errorMessage: errorMessage,
      ),
      looping: widget.looping,
    );
  }

  @override
  void dispose() {
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Chewie(controller: _chewieController),
    );
  }
}
