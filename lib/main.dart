import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wheel Picker',
      home: Picker(),
    );
  }
}

class Picker extends StatefulWidget {
  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Thorgrim Grudgebearer',
      'Ungrim Ironfist',
      'Grombrindal',
      'Belegar Ironhammer',
      'Emperor Karl Franz',
      'Balthazard Gelt',
      'Volkmar the Grim',
      'Markus Wulfhart',
      'Mannfred von Carstein',
      'Heinrich Kemmler',
      'Helman Ghorst',
      'Vlad von Carstein',
      'Isabella von Carstein',
      'Grimgor Ironhide',
      'Azhag the Slaughterer',
      'Wurzzag',
      'Skarsnik',
      'Grom the Paunch',
      'Khazrak the One-Eye',
      'Malagor the Dark Omen',
      'Morghur the Shadowgave',
      'Archaon the Everchosen',
      'Sigvald the Magnificent',
      'Kholek Suneater',
      'King Louen Leoncoeur',
      'Alberic de Bordeleaux',
      'The Fay Enchantress',
      'Repanse de Lyonesse',
      'Orion',
      'Durthu',
      'Sisters of Twilight',
      'Drycha',
      'Wulfrik the Wanderer',
      'Throgg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Total War: Warhammer 2 Legendary Lord Picker'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = Random().nextInt(items.length);
          });
        },
        child: Column(
          children: [
            Expanded(
              child: FortuneWheel(
                selected: selected,
                items: [
                  for (var it in items) FortuneItem(child: Text(it)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
