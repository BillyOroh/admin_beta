// masih pake switch case

import 'package:flutter/material.dart';
import 'package:admin_one/on_main_body/dashboard_page.dart';
import 'package:admin_one/on_side_body/navigation_panel.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget pages;
    switch (selectedIndex) {
      case 0:
        pages = DashPage();
        break;
      case 1:
        pages = Expanded(
          child: Container(
            child: Placeholder(),
          ),
        );
        break;
      case 2:
        pages = Expanded(
          child: Container(
            child: Placeholder(),
          ),
        );
        break;
      case 3:
        pages = Expanded(
          child: Container(
            child: Placeholder(),
          ),
        );
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return Scaffold(
      body: Row(
        // 2 row di app utama, kiri panel navigasi + profil, kanan main body
        children: [
          // Side body yang di kiri
          NavPanel(
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),
          // Main body yang di kanan
          pages,
        ],
      ),
    );
  }
}
