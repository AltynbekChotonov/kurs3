// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton(this.nota, {Key? key}) : super(key: key);

  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Color.fromARGB(255, 125, 124, 124)
                    : null;
              },
            ),
          ),
          onPressed: () async {
            await AssetsAudioPlayer.newPlayer()
                .open(Audio("/audios/$nota.wav"));
          },
          onLongPress: () async {
            await AssetsAudioPlayer.newPlayer().open(
              Audio("/audios/$nota.wav"),
            );
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'k3',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
