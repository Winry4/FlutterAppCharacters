import 'package:cartoons_flutter/model/character.dart';
import 'package:flutter/material.dart';

import '../model/characters_data.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  CharacterWidget({Key key, @required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 0: Use basic widgets you already know to create this character widget/cell.
    // Some useful tips:
    // * Don't delete Container widget, add all your widgets inside. Remember Container only
    //   has one child, but your first step should probably be adding a Row as that child ;)
    // * Load images with Image.asset(character.image, ...
    // * In Container widget, feel free to use decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(20.0)))

    return Container(
        height: 180,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  character.image,
                  height: 150,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(this.character.name),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.blue,
                          ),
                          child: Text(this.character.stars.toString()),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(this.character.jobTitle),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
