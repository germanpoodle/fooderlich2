import 'package:flutter/material.dart';
import 'empty_grocery_screen.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 6
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // TODO: Present GroceryItemScreen
        },
      ),
// 7
      body: buildGroceryScreen(),
    );
  }

  // TODO: Add buildGroceryScreen
  Widget buildGroceryScreen() {
// 1
    return Consumer<GroceryManager>(
      // 2
      builder: (context, manager, child) {
// 3
        if (manager.groceryItems.isNotEmpty) {
          // TODO: Add GroceryListScreen
          return Container();
        } else {
          // 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
