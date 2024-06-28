import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:spotify_music_player/constant/custom_color.dart';

import 'widgets/art_work_image.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  String artistName = "Pablo Epic";
  String songName = "Sleeping Beauty";

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: CustomColor.songColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.close,
                    color: Colors.transparent,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Singing Now",
                        style: textTheme.bodyMedium
                            ?.copyWith(color: CustomColor.primaryColor),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            artistName,
                            style: textTheme.bodyLarge
                                ?.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.close, color: Colors.white),
                ],
              ),
              const Expanded(
                flex: 2,
                child: Center(
                  child: ArtWorkImage(
                      image:
                          "https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&w=600"),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ///song and artist name
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              songName,
                              style: textTheme.titleLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                            Text(
                              artistName,
                              style: textTheme.titleMedium
                                  ?.copyWith(color: Colors.white60),
                            ),
                          ],
                        ),
                        const Icon(Icons.favorite, color: Colors.green),
                      ],
                    ),

                    ///progressbar
                    ProgressBar(
                      progress: const Duration(minutes: 1),
                      buffered: const Duration(seconds: 5),
                      total: const Duration(minutes: 3, seconds: 50),
                      bufferedBarColor: Colors.white38,
                      baseBarColor: Colors.white10,
                      thumbColor: Colors.white,
                      progressBarColor: Colors.white,
                      timeLabelTextStyle: const TextStyle(color: Colors.white),
                      onSeek: (value) {
                        print("Resutl: $value");
                      },
                    ),

                    ///controller
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.lyrics_outlined,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 36,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 36,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.loop,
                            color: CustomColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
