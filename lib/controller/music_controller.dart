
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:play_music/constants/hive_key.dart';
import 'package:file_picker/file_picker.dart';
import '../model/music_model.dart';
class SaveMusic{
  List<int>readAsBytesSync=[
  ];
   
   PlatformFile file = PlatformFile(name: 'nothing', size: 0);
     AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

     addToLinkMusic() async{

      var box = await Hive.openBox(HiveFieldConstants.musicInboxList);
      var music = MusicModel(
        pathMusic: filePicker());
        box.add(music);

     audioPlayer.open(Audio('assets/talkhi.mp3'),
     autoStart: false,showNotification: true);
     }
     
       
filePicker()async{
     FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.audio);
     if(result != null){
     
     }

  }

  
}







