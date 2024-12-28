import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerScreen extends StatefulWidget {
  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _player.setAsset('assets/audio/song.mp3');
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Audio Player')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 200,

              child: Image.asset("assets/images/siyaRam.jpeg"),
            ),

            SizedBox(
              height: 50,
            ),

            ElevatedButton(
              onPressed: () => _player.play(),
              child: Text('Play Audio'),
            ),
          ],
        ),
      ),
    );
  }
}
