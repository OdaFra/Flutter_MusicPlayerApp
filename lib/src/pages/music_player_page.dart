import 'package:app_musicplayer/src/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [CustomAppBar()],
    ));
  }
}
