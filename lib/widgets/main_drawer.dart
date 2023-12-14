import 'package:flutter/material.dart';
import 'package:meals/widgets/drawer_list.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
            ])),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking UP!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        // fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
          ),
          DrawerList(
              name: "Meals",
              icon: Icons.restaurant,
              onClick: () {
                onSelectScreen('meals');
              }),
          DrawerList(
              name: "Filters",
              icon: Icons.settings,
              onClick: () {
                onSelectScreen('filters');
              }),
        ],
      ),
    );
  }
}
