import 'package:flutter/material.dart';
import 'package:sp8/features/bet/presentation/super_bet_definition.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class DefineSuperBetDrawer extends StatefulWidget {
  const DefineSuperBetDrawer({super.key});

  @override
  DefineSuperBetDrawerState createState() => DefineSuperBetDrawerState();
}

class DefineSuperBetDrawerState extends State<DefineSuperBetDrawer> {
  final TextEditingController betNameController = TextEditingController();
  final FocusNode betNameFocusNode = FocusNode();
  String? selectedSport;
  bool isSaveEnabled = false;

  @override
  void initState() {
    super.initState();
    betNameController.addListener(updateSaveButtonState);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      betNameFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    betNameController.dispose();
    betNameFocusNode.dispose();
    super.dispose();
  }

  void updateSaveButtonState() {
    setState(() {
      isSaveEnabled = betNameController.text.isNotEmpty && selectedSport != null;
    });
  }

  void saveBet() {
    Navigator.pop(context); // Close the drawer
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SuperBetDefinition()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[800],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Define SuperBet',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("To create your own SuperBet, you will first need to "
                            "provide basic information for this SuperBet."
                        .hardcoded),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: betNameController,
                      focusNode: betNameFocusNode,
                      decoration: const InputDecoration(labelText: 'SuperBet Name'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DropdownButtonFormField<String>(
                      value: selectedSport,
                      onChanged: (newValue) {
                        setState(() {
                          selectedSport = newValue;
                          updateSaveButtonState();
                        });
                      },
                      items: <String>[
                        'Football (SuperBowl LVIII)',
                        'Football (NFL)',
                        'Football (CFL)',
                        'Hockey - (NHL)',
                        'Baseball (AL)',
                        'Baseball (NL)',
                        'Soccer (MLS)',
                        'Basketball (NBA)',
                        'Racing',
                        'Custom...'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(labelText: 'Select the Event'.hardcoded),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: isSaveEnabled ? saveBet : null,
                      child: Text('Proceed with Bets Definitions'.hardcoded),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel', style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
