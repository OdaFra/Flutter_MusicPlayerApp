import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:app_musicplayer/src/theme/theme.dart';
import 'package:app_musicplayer/src/models/audioplayer_model.dart';

import 'src/pages/music_player_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AudioPlayerModel())],
      child: MaterialApp(
        theme: miTema,
        debugShowCheckedModeBanner: false,
        title: 'App Music Player',
        home: MusicPlayerPage(),
      ),
    );
  }
}
