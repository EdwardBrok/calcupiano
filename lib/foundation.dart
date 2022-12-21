// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:calcupiano/converter.dart';
import 'package:logger/logger.dart';
import 'package:uuid/uuid.dart';

export 'package:calcupiano/converter.dart';
import 'foundation/sound_file.dart';
import 'foundation/soundpack.dart';
import 'foundation/music.dart';
import 'foundation/page.dart';
export 'foundation/soundpack.dart';
export 'foundation/music.dart';
export 'foundation/page.dart';
export 'foundation/sound_file.dart';

final Log = Logger();
const UUID = Uuid();

void initFoundation() {
  initConverter();
}

void initConverter() {
  Converter.registerConverter(LocalSoundFile.type, (obj) => obj.toJson(), LocalSoundFile.fromJson);
  Converter.registerConverter(LocalSoundpack.type, (obj) => obj.toJson(), LocalSoundpack.fromJson);
  Converter.registerConverter(BundledSoundFile.type, (obj) => obj.toJson(), BundledSoundFile.fromJson);
  Converter.registerConverter(SoundpackMeta.type, (obj) => obj.toJson(), SoundpackMeta.fromJson);
}