import 'dart:core';
import 'dart:html' as webFile;
// import 'package:file_picker/file_picker.dart' as webPicker;
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import "package:path/path.dart" show dirname, join, normalize;

import 'model_generator.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'json_to_dart',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'json_to_dart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String mDartText = "";

  String jsonData = "";

  String jsonDataRes = "";

  String jsonClassName = "";

  void _dealJsonData() {
    if(jsonData != "" && jsonClassName != "") {
      dealText();
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(

        // width: ,
        // color: Colors.red,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children: <Widget>[

              TextField(
                cursorHeight: 20,
                decoration: const InputDecoration(
                  labelText: "请输入正确的json",
                  // icon: Icon(Icons.people),
                  hintText: "请输入正确的json",
                  // prefixIcon: Icon(Icons.people_alt_rounded)
                ),
                onChanged: onTextChange,
              ),
              TextField(
                cursorHeight: 20,
                decoration: const InputDecoration(
                  labelText: "请输入正确的类名",
                  // icon: Icon(Icons.people),
                  hintText: "请输入正确的json",
                  // prefixIcon: Icon(Icons.people_alt_rounded)
                ),
                onChanged: onTextClassNameChange,
              ),
              SelectableText(
                jsonDataRes,
                // style: Theme.of(context).textTheme.headline4,
              )
              // Text(
              //
              //   jsonDataRes,
              //   style: Theme.of(context).textTheme.headline4,
              // )

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _dealJsonData,
        tooltip: 'Increment',
        child: Text('完成'),
        // child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  String _scriptPath() {
    // var script = Platform.script.toString();
    // if (script.startsWith("file://")) {
    //   script = script.substring(8);
    // } else {
    //   final idx = script.indexOf("file:/");
    //   script = script.substring(idx + 5);
    // }
    // return script;
    return 'C:\\Users\\sck\\Downloads\\untitled2\\example\\generate_model_example.dart';
  }

  // Future<String> readData() async {
  //
  //   final webPicker.FilePickerResult? filePickerResult = await webPicker.FilePicker.platform.pickFiles();
  //
  //   final reader = webFile.FileReader();
  //   List<PlatformFile> files = filePickerResult!.files;
  //   PlatformFile platformFile = files.first;
  //   reader.readAsDataUrl(platformFile.readStream);
  //
  //   await reader.onLoad.first;
  //
  //   String data = reader.result;
  //   return '';
  // }

  void dealText() {
    final classGenerator = ModelGenerator(jsonClassName, true);
    // final currentDirectory = dirname(_scriptPath());
    // final filePath = normalize(join(currentDirectory, 'sample.json'));
    // final jsonRawData = new File(filePath).readAsStringSync();
    DartCode dartCode = classGenerator.generateDartClasses(jsonData);
    // mDartText = dartCode.code;
    setState(() {
      jsonDataRes = dartCode.code;
    });

    // print(dartCode.code);
  }

  void onTextChange(String text) {
    setState(() {
      jsonData = text;
    });

  }

  void onTextClassNameChange(String text) {
    setState(() {
      jsonClassName = text;
    });
  }
}
