import 'package:flutter/material.dart';
import 'package:last_music_player_ygt/screens/player_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player YGT',
      theme: ThemeData(useMaterial3: true, textTheme:const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: const PlayerMainPage(),
    );
  }
}
