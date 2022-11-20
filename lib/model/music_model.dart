

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:hive/hive.dart';
part 'music_model.g.dart';

 @HiveType(typeId: 0)
class MusicModel extends HiveObject{

 
 @HiveField(0)
 AssetsAudioPlayer pathMusic;

 MusicModel({

  required this.pathMusic,

 });

}