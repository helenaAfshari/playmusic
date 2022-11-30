import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:play_music/musicscreen.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'model/music_model.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(MusicModelAdapter());
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
     home: MusicScreen(),
    );
  }
}

