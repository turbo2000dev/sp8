import 'package:flutter/material.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class BetForm extends StatefulWidget {
  const BetForm({super.key, required this.betId});

  final String betId;

  @override
  State<BetForm> createState() => _BetFormState();
}

class _BetFormState extends State<BetForm> {
  @override
  Widget build(BuildContext context) {
    String name = '';
    int age = 0;
    bool isEmployed = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Form Screen'.hardcoded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'.hardcoded),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Age'.hardcoded),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  age = int.tryParse(value)!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            CheckboxListTile(
              title: Text('Employed'.hardcoded),
              value: isEmployed,
              onChanged: (value) {
                setState(() {
                  isEmployed = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Submit'.hardcoded),
              onPressed: () {
                // Perform actions with the form data here
                debugPrint('Name: $name'.hardcoded);
                debugPrint('Age: $age'.hardcoded);
                debugPrint('Employed: $isEmployed'.hardcoded);
              },
            ),
          ],
        ),
      ),
    );
  }
}
