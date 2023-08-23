import 'package:flutter/material.dart';

class NavRail extends StatelessWidget {
  final selectedIndex;
  final onDestinationSelected;

  const NavRail({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      selectedIconTheme: IconThemeData(color: Colors.black),
      selectedLabelTextStyle: TextStyle(color: Colors.black),
      elevation: 2,
      extended: true,
      onDestinationSelected: onDestinationSelected,
      destinations: [
        NavigationRailDestination(
          icon: Icon(Icons.dashboard),
          label: Text('D A S H B O A R D'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.person),
          label: Text('M E M B E R S'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.star),
          label: Text('V O T E R S'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.map),
          label: Text('M A P P I N G'),
        ),
      ],
    );
  }
}
