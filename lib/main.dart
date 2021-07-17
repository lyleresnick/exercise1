import 'package:exercise1/ui/name_picker/assembly/name_picker_assembly.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator (Clean)',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: NamePickerAssembly().scene
    );
  }
}
