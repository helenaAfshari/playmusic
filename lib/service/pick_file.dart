
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

import '../controller/music_controller.dart';

  filePicker()async{
     FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.audio);
     if(result != null){
      Uint8List? fileByte = result.files.first.bytes;
      String fileName = result.files.first.name;
     }

  }
