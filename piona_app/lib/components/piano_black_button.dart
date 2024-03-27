// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton(
    this.nota, {
    Key? key,
    this.visible = true,
  }) : super(key: key);

  final bool visible;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.5),
        child: SizedBox(
          width: 63,
          height: 200,
          child: Visibility(
            visible: visible,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.black),
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) {
                    return states.contains(MaterialState.pressed)
                        ? const Color.fromARGB(255, 125, 124, 124)
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
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'k3',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
