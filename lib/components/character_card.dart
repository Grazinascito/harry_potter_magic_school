import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.data, required this.index});
  final List data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 8,
                offset: const Offset(0, 3))
          ]),
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
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
          softWrap: true,
          maxLines: 2,
        )
      ]),
    );
  }
}
