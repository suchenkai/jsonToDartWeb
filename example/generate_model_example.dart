import 'dart:io';
import "package:path/path.dart" show dirname, join, normalize;
import '../lib/json_to_dart.dart';

String _scriptPath() {
  var script = Platform.script.toString();
  if (script.startsWith("file://")) {
    script = script.substring(8);
  } else {
    final idx = script.indexOf("file:/");
    script = script.substring(idx + 5);
  }
  return script;
}

main() {
  final classGenerator = new ModelGenerator('listPhotoFile');
  final currentDirectory = dirname(_scriptPath());
  final filePath = normalize(join(currentDirectory, 'listPhotoFile.json'));
  final jsonRawData = new File(filePath).readAsStringSync();
  DartCode dartCode = classGenerator.generateDartClasses(jsonRawData);
  print(dartCode.code);
}
