import 'package:flutter/material.dart';
import 'package:harry_potter_app/components/atoms/TextInfo.dart';

class PersonalDataFooter extends StatelessWidget {
  const PersonalDataFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          minLeadingWidth: 10,
          title: const Text("Dados de varinha e feitiços:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          leading: Image.asset('./assets/images/wand_icon.png'),
        ),
        const TextInfo(title: 'Varinha', subtitle: 'XXXXXX')
      ],
    );
  }
}
