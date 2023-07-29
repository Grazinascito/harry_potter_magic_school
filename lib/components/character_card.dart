import 'package:flutter/material.dart';

import '../global_style.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.data, required this.index});
  final List data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        color: whiteDefault,
        child: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Column(children: [
            ClipOval(
                child: SizedBox.fromSize(
                    size: const Size.fromRadius(25),
                    child: Image.network(
                      '${data[index].image}',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.network(
                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png');
                      },
                    ))),
            const SizedBox(height: 10),
            Text(
              data[index].name,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
              softWrap: true,
              maxLines: 2,
            )
          ]),
        ),
      ),
    );
  }
}
