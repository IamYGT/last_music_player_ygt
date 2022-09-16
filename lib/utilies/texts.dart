import 'package:flutter/material.dart';

import 'package:last_music_player_ygt/product/lang/en.dart';

mixin ProjectTexts on Text {
  static const appbarTitle = Text(
    Strings.appBarTitletxt,
    style: ProjectTextStyle.appbarTitle,
  );
}


mixin ProjectTextStyle on TextStyle {
  static const appbarTitle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  static const onlyWhite = TextStyle(color: Colors.white);
  static const onlyWhite70 = TextStyle(color: Colors.white70);
}
