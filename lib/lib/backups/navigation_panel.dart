import 'package:flutter/material.dart';

class NavPanel extends StatefulWidget {
  const NavPanel({super.key});

  @override
  State<NavPanel> createState() => _NavPanelState();
}

class _NavPanelState extends State<NavPanel> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NavigationRail(
          // Depe panel navigasi
          selectedIndex: 0,
          selectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelTextStyle: TextStyle(color: Colors.black),
          elevation: 2,
          extended: true,
          onDestinationSelected: (value) {
            selectedIndex = value;
            setState(() {});
          },
          destinations: [
            // Depe list menu
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
        ),
        Positioned(
          // Profil akun yang paling bawah
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/avatar_logo.png'),
                  maxRadius: 40,
                ),
                //color: Colors.red,
                height: 100,
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text('Johnny Minahasa'),
                    Text(
                      'john_m@gmail.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                //color: Colors.green,
                height: 50,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                    IconButton(icon: Icon(Icons.logout), onPressed: () {}),
                  ],
                ),
                //color: Colors.blue,
                height: 50,
              )
            ],
          ),
        ),
      ],
    );
  }
}
