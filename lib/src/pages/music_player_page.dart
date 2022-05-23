import 'package:app_musicplayer/src/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomAppBar(),
        ImageDiscoDuracion(),
      ],
    ));
  }
}

class ImageDiscoDuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ImageDisco()

          //TODO:Barra progreso
        ],
      ),
    );
  }
}

class ImageDisco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 250,
      height: 250,
      // ignore: sort_child_properties_last
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Image(image: AssetImage('assets/aurora.jpg')),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                  color: const Color(0xff1c1c25),
                  borderRadius: BorderRadius.circular(100)),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          colors: [Color(0xff484750), Color(0xff1e1c24)],
        ),
      ),
    );
  }
}
