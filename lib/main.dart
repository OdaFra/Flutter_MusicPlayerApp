import 'package:app_musicplayer/src/theme/theme.dart';
import 'package:flutter/material.dart';

import 'src/pages/music_player_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: miTema,
      debugShowCheckedModeBanner: false,
      title: 'App Music Player',
      home: MusicPlayerPage(),
    );
  }
}
