
import 'package:flutter/material.dart';


import 'package:last_music_player_ygt/utilies/texts.dart';
import 'package:last_music_player_ygt/utilies/utilies.dart';



class MainPageWidgets {
  static final appBarW = AppBar(
    title: ProjectTexts.appbarTitle,
    centerTitle: false,
    backgroundColor: Colors.transparent,
  );

  static const dividerSeperated = Divider(
    color: ProjectColors.divider,
    height: 0,
    thickness: 1,
    indent: 85,
  );
}
