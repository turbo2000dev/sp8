import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewBetDrawer extends StatefulWidget {
  const NewBetDrawer({super.key});

  @override
  NewBetDrawerState createState() => NewBetDrawerState();
}

class NewBetDrawerState extends State<NewBetDrawer> {
  final TextEditingController _shortNameController = TextEditingController();
  final TextEditingController _longNameController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _customUnitController = TextEditingController();
  final List<TextEditingController> _choiceControllers = [];
  final List<FocusNode> _choiceFocusNodes = [];

  String? _selectedBetType;
  String? _selectedMultipleChoice;
  String? _selectedUnit;
  String? _selectedClosestType;
  List<String> customChoices = [];

  bool isSaveEnabled = false;

  static const betTypes = ['Multiple Choices', 'Closest Value', 'Combo: Multiple+Closest'];

  static const multipleChoiceOptions = ['Yes / No', 'Team A / Team B', '1st, 2nd, 3rd or 4th Quarter', 'Custom...'];

  static const unitOptions = ['Points', 'Duration', 'Time (clock wall)', 'Time (game clock)', 'Custom...'];

  static const closestTypeOptions = [
    'Closest',
    'Closest without going over',
    'Closest without going under',
  ];

  @override
  void initState() {
    super.initState();
    _selectedBetType = null;
    _selectedMultipleChoice = null;
    _selectedUnit = null;
    _selectedClosestType = null;
    // Add listeners to all text controllers
    _shortNameController.addListener(updateSaveButtonState);
    _longNameController.addListener(updateSaveButtonState);
    _valueController.addListener(updateSaveButtonState);
    _customUnitController.addListener(updateSaveButtonState);
    // Initialize with a call to update the save button state
    updateSaveButtonState();
  }

  @override
  void dispose() {
    _shortNameController.dispose();
    _longNameController.dispose();
    _valueController.dispose();
    _customUnitController.dispose();
    for (var controller in _choiceControllers) {
      controller.dispose();
    }
    for (var node in _choiceFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void updateSaveButtonState() {
    // Check if all required fields are filled
    bool shouldEnable = _shortNameController.text.isNotEmpty &&
        _longNameController.text.isNotEmpty &&
        _valueController.text.isNotEmpty &&
        _selectedBetType != null &&
        (_selectedBetType != 'Multiple Choices' || _selectedMultipleChoice != null) &&
        (_selectedBetType != 'Closest Value' || _selectedUnit != null && _selectedClosestType != null);
    setState(() {
      isSaveEnabled = shouldEnable;
    });
  }

  String _getTitle() {
    // Get title based on the short name
    return _shortNameController.text.isEmpty ? 'New Bet' : 'Bet: ${_shortNameController.text}';
  }

  void _saveNewBet() {
    // Logic to save the new bet
  }

  Widget _buildDescriptionSection(String label, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14)),
          Text(text, style: const TextStyle(color: Colors.black, fontSize: 14)),
        ],
      ),
    );
  }

  void _addChoice({bool focusLast = false}) {
    var newController = TextEditingController();
    var newFocusNode = FocusNode();
    setState(() {
      customChoices.add('');
      _choiceControllers.add(newController);
      _choiceFocusNodes.add(newFocusNode);
    });
    if (focusLast) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        newFocusNode.requestFocus();
      });
    }
  }

  void _handleKey(KeyEvent event, int index) {
    if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.enter && index == customChoices.length - 1) {
      _addChoice(focusLast: true);
    }
  }

  void _onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    setState(() {
      final item = customChoices.removeAt(oldIndex);
      customChoices.insert(newIndex, item);
      final controller = _choiceControllers.removeAt(oldIndex);
      _choiceControllers.insert(newIndex, controller);
      final focusNode = _choiceFocusNodes.removeAt(oldIndex);
      _choiceFocusNodes.insert(newIndex, focusNode);
    });
  }

  Widget _buildCustomChoicesTable() {
    if (_selectedMultipleChoice == 'Custom...' && customChoices.isEmpty) {
      _addChoice();
    }

    return ReorderableListView(
      onReorder: _onReorder,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        for (int index = 0; index < customChoices.length; index++)
          Row(
            key: ValueKey(index),
            children: [
              Expanded(
                child: KeyboardListener(
                  focusNode: FocusNode(),
                  onKeyEvent: (event) => _handleKey(event, index),
                  child: TextField(
                    focusNode: _choiceFocusNodes[index],
                    controller: _choiceControllers[index],
                    onChanged: (value) => customChoices[index] = value,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.delete), // Change from Icons.remove to Icons.delete
                onPressed: () {
                  setState(() {
                    customChoices.removeAt(index);
                    _choiceControllers.removeAt(index).dispose();
                    _choiceFocusNodes.removeAt(index).dispose();
                  });
                },
              ),
              ReorderableDragStartListener(
                index: index,
                child: const Icon(Icons.drag_handle),
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildMultipleChoicesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDescriptionSection('Choices Selection', 'Select from the available set of choices.'),
        DropdownButtonFormField<String>(
          value: _selectedMultipleChoice,
          onChanged: (newValue) {
            setState(() {
              _selectedMultipleChoice = newValue;
              if (newValue == 'Custom...') {
                _addChoice();
              }
            });
          },
          items: multipleChoiceOptions.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: const InputDecoration(
            labelText: 'Set of Choices',
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          ),
          hint: const Text('Select Choice Set'),
        ),
        if (_selectedMultipleChoice == 'Custom...') _buildCustomChoicesTable(),
      ],
    );
  }

  Widget _buildClosestValueSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDescriptionSection('Closest Value', 'Select the unit and closest value rule.'),
        DropdownButtonFormField<String>(
          value: _selectedUnit,
          onChanged: (newValue) {
            setState(() {
              _selectedUnit = newValue;
            });
          },
          items: unitOptions.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: const InputDecoration(
            labelText: 'Select Unit',
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          ),
          hint: const Text('Select Unit'),
        ),
        if (_selectedUnit == 'Custom...') ...[
          _buildDescriptionSection(
            'Custom Unit',
            'Provide the name of the Custom Unit',
          ),
          TextField(
            controller: _customUnitController,
            decoration: const InputDecoration(
              labelText: 'Custom Unit',
              hintText: 'Ex.: Number of Fumbles',
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            ),
          ),
        ],
        _buildDescriptionSection(
          'Rule for Closest Value',
          'Define how to determine the winning bet.',
        ),
        DropdownButtonFormField<String>(
          value: _selectedClosestType,
          onChanged: (newValue) {
            setState(() {
              _selectedClosestType = newValue;
            });
          },
          items: closestTypeOptions.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: const InputDecoration(
            labelText: 'Closest Value Rule',
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          ),
          hint: const Text('Select Closest Value Rule'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[800],
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            padding: const EdgeInsets.all(16),
            child: Text(
              _getTitle(), // Dynamic title
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _buildDescriptionSection(
                      'Short Name',
                      'This will be used to identify the bet in lists and tables. Try to keep it short.',
                    ),
                    TextField(
                      controller: _shortNameController,
                      decoration: const InputDecoration(
                        labelText: 'Short Name',
                        hintText: "Ex: Heads or Tails",
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                    ),
                    _buildDescriptionSection(
                      'Long Name',
                      'Describe in one sentence what is the bet. Usually under the form of a question. Can be multi-lines.',
                    ),
                    TextField(
                      controller: _longNameController,
                      decoration: const InputDecoration(
                        labelText: 'Long Name',
                        hintText: 'Ex: Which team will win Heads or Tails?',
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                      maxLines: null,
                    ),
                    _buildDescriptionSection(
                      'Bet Value',
                      'How much does this bet count for?',
                    ),
                    TextField(
                      controller: _valueController,
                      decoration: const InputDecoration(
                        labelText: 'Bet Value',
                        contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                      ),
                    ),
                    _buildDescriptionSection(
                      'Bet Type',
                      'Specify the type of the bet you want to offer.',
                    ),
                    DropdownButtonFormField<String>(
                      value: _selectedBetType,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedBetType = newValue;
                        });
                      },
                      items: betTypes.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        labelText: 'Bet Type',
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                      hint: const Text('Select Bet Type'),
                    ),
                    if (_selectedBetType == 'Multiple Choices' || _selectedBetType == 'Combo: Multiple+Closest')
                      _buildMultipleChoicesSection(),
                    if (_selectedBetType == 'Closest Value' || _selectedBetType == 'Combo: Multiple+Closest')
                      _buildClosestValueSection(),
                    const SizedBox(height: 20),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ElevatedButton(
                          onPressed: isSaveEnabled ? _saveNewBet : null,
                          child: const Text('Save'),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel', style: TextStyle(color: Colors.blue)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
