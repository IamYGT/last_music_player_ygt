import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:last_music_player_ygt/utilies/texts.dart';
import 'package:last_music_player_ygt/widgets/player_main_widgets.dart';
import 'package:last_music_player_ygt/utilies/song_list.dart';
import 'package:last_music_player_ygt/utilies/utilies.dart';

class PlayerMainPage extends StatefulWidget {
  const PlayerMainPage({Key? key}) : super(key: key);

  @override
  State<PlayerMainPage> createState() => _PlayerMainPageState();
}

class _PlayerMainPageState extends State<PlayerMainPage> with SingleTickerProviderStateMixin {
  final player = AssetsAudioPlayer();
  bool isPlaying = true;

  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 3));

  @override
  void initState() {
    super.initState();
    openPlayer();
    player.isPlaying.listen((event) {
      if (mounted) {
        setState(() {
          isPlaying = event;
        });
      }
    });
  }

  void openPlayer() async {
    await player.open(Playlist(audios: songs), autoStart: false, showNotification: true, loopMode: LoopMode.playlist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.scaffoldBG,
      appBar: MainPageWidgets.appBarW,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SafeArea(
              child: ListView.separated(
            separatorBuilder: ((context, index) {
              return MainPageWidgets.dividerSeperated;
            }),
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  title: Text(
                    songs[index].metas.title!,
                    style: ProjectTextStyle.onlyWhite,
                  ),
                  subtitle: Text(
                    songs[index].metas.artist!,
                    style: ProjectTextStyle.onlyWhite70,
                  ),
                  leading: ClipRRect(
                    borderRadius: ProjectBorderDec.radius10,
                    child: Image.asset(songs[index].metas.image!.path),
                  ),
                  onTap: () async {
                    await player.playlistPlayAtIndex(index);
                    setState(() {
                      player.getCurrentAudioImage;
                      player.getCurrentAudioTitle;
                    });
                  },
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
