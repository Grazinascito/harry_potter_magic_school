import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CharacterInfo extends StatefulWidget {
  const CharacterInfo({super.key});

  @override
  State<CharacterInfo> createState() => _CharacterInfoState();
}

class _CharacterInfoState extends State<CharacterInfo> {
  // @override
  // void initState() {
  //   super.initState();
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: [SystemUiOverlay.bottom]);
  // }

  final gradientHeader = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromARGB(180, 167, 17, 37), Color(0xFFFFFCF5)]);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: List.empty());
    return Scaffold(
      backgroundColor: const Color(0xFFfef9f0),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(gradient: gradientHeader),
          height: 250,
          child: Stack(children: [
            Positioned(
                right: 45, child: Image.asset('./assets/images/red_flag.png')),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 52, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints:
                        const BoxConstraints(minWidth: 0, maxWidth: 60),
                    icon: const Icon(Icons.chevron_left),
                    iconSize: 35,
                    color: Colors.black,
                    onPressed: () => {Navigator.pop(context)},
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8SC76eRU3DWifJRqv3-PKZXTPWIBuFmxiw&usqp=CAU'),
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Harry Potter",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
