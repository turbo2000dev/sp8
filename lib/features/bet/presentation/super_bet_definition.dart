import 'package:flutter/material.dart';
import 'package:sp8/core/constants/image_files.dart';
import 'package:sp8/features/bet/presentation/new_bet_drawer/new_bet_drawer.dart';
import 'package:sp8/features/bet/presentation/define_super_bet_drawer.dart';

class SuperBetDefinition extends StatefulWidget {
  const SuperBetDefinition({super.key});

  @override
  SuperBetDefinitionState createState() => SuperBetDefinitionState();
}

class SuperBetDefinitionState extends State<SuperBetDefinition> {
  List<Map<String, dynamic>> bets = List.generate(
    12,
    (index) => {
      "name": "Bet ${index + 1}",
      "type": "Type ${index % 5 + 1}",
      "value": index * 10, // Example value, customize as needed
    },
  );

  void _editSuperBet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const SizedBox(
          height: 500,
          child: DefineSuperBetDrawer(),
        );
      },
    );
  }

  void _editBet(BuildContext context, String betName) {
    // Logic to edit a specific bet
  }

  void _deleteBet(BuildContext context, String betName) {
    // Logic to delete a specific bet
  }

  void _addNewBet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const FractionallySizedBox(
          heightFactor: 0.92,
          child: NewBetDrawer(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int totalBets = bets.length;
    int totalValue = bets.fold<int>(0, (int sum, Map<String, dynamic> item) => sum + (item['value'] as int));

    return Scaffold(
      appBar: AppBar(
        title: const Text('SuperBet Definition'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    const ListTile(
                      title: Center(
                        child: Text(
                          "SuperBet Name",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Image.asset(
                        ImageFiles.superBetBackground,
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () => _editSuperBet(context),
                      child: const Text("Modify Name or Image"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Text(
                  'Number of Bets: $totalBets, Total Value: $totalValue',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),
              ReorderableListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: bets.length,
                itemBuilder: (context, index) {
                  final bet = bets[index];
                  return Card(
                    key: ValueKey(bet["name"]),
                    color: Colors.grey[200],
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(bet["name"]),
                      subtitle: Text("Type: ${bet["type"]}\nValue: ${bet["value"]}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _editBet(context, bet["name"]),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteBet(context, bet["name"]),
                          ),
                          ReorderableDragStartListener(
                            index: index,
                            child: const Icon(Icons.drag_handle),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) {
                      newIndex -= 1;
                    }
                    final item = bets.removeAt(oldIndex);
                    bets.insert(newIndex, item);
                  });
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _addNewBet(context),
        label: const Text('Add New Bet'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
