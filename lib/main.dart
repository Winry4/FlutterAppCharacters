import 'package:cartoons_flutter/model/characters_data.dart';
import 'package:cartoons_flutter/widgets/character_widget.dart';
import 'package:flutter/material.dart';

import 'model/characters_data.dart';
import 'model/characters_data.dart';
import 'model/characters_data.dart';
import 'model/characters_data.dart';
import 'model/characters_data.dart';
import 'model/characters_data.dart';
import 'model/characters_data.dart';
import 'widgets/character_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartoooooonery'),
      ),
      body: ListView.builder(
        // TODO 1: Check the docs for ListView. You need to pass something to its children
        // property to replace current null placeholder. If you check characters_data.dart
        // file, you'll find you have access to a characters constant of type "array of Character".
        // Use some functional code to convert that array into a list of the widgets
        // you have created in TODO 0.
        itemCount: characters.length,
        itemBuilder: (context, index) {
          //final item = posts[index];
          return CharacterWidget(
            character: characters.elementAt(index),
          );
        },
      ),
    );
  }
}
