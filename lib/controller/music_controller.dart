

import 'package:hive_flutter/hive_flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:play_music/constants/hive_key.dart';

import '../model/music_model.dart';

class SaveMusic{

   
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
     

     addToLinkMusic() async{

      var box = await Hive.openBox(HiveFieldConstants.musicInboxList);
      var music = MusicModel(
        linkMusic: audioPlayer);
        box.add(music);
     audioPlayer.open(Audio('assets/talkhi.mp3'),
     autoStart: false,showNotification: true);
     
     }

  
}



