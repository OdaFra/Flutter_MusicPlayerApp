import 'package:app_musicplayer/src/helpers/helpers.dart';
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
        TituloPlay(),
        Expanded(child: Lyrics())
      ],
    ));
  }
}

class Lyrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();
    return Container(
      child: ListWheelScrollView(
        physics: const BouncingScrollPhysics(),
        itemExtent: 42,
        diameterRatio: 1.5,
        children: lyrics
            .map((linea) => Text(
                  linea,
                  style: TextStyle(
                      fontSize: 20, color: Colors.white.withOpacity(0.8)),
                ))
            .toList(),
      ),
    );
  }
}

class TituloPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      margin: const EdgeInsets.only(top: 60),
      child: Row(
        children: [
          Column(
            children: [
              Text('Far Away',
                  style: TextStyle(
                      fontSize: 30, color: Colors.white.withOpacity(0.8))),
              Text('-Breaking Benjamin-',
                  style: TextStyle(
                      fontSize: 15, color: Colors.white.withOpacity(0.5))),
            ],
          ),
          const Spacer(),
          FloatingActionButton(
            elevation: 0,
            highlightElevation: 0,
            onPressed: () {},
            backgroundColor: const Color(0xfff8cb51),
            child: const Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}

class ImageDiscoDuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.only(top: 70),
      child: Row(
        children: [
          ImageDisco(),
          const SizedBox(width: 20),
          BarraProgreso(),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

class BarraProgreso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(color: Colors.white.withOpacity(0.4));

    return Container(
      child: Column(
        children: [
          Text('00:00', style: estilo),
          const SizedBox(height: 10),
          Stack(
            children: [
              Container(
                width: 3,
                height: 230,
                color: Colors.white.withOpacity(0.3),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 3,
                  height: 150,
                  color: Colors.white.withOpacity(0.8),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text('00:00', style: estilo),
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
