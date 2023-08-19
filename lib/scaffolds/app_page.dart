import 'package:admin_one/scaffolds/login_page.dart';
import 'package:flutter/material.dart';
import 'package:admin_one/main_body/dashboard_page.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = DashPage();
        break;
      case 1:
        page = Expanded(
          child: Container(
            child: Placeholder(),
          ),
        );
        break;
      case 2:
        page = Expanded(
          child: Container(
            child: Placeholder(),
          ),
        );
        break;
      case 3:
        page = Expanded(
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
          Stack(
            // Depe panel navigasi yang di kiri, flex 1
            children: [
              NavigationRail(
                selectedIndex: selectedIndex,
                selectedIconTheme: IconThemeData(color: Colors.black),
                selectedLabelTextStyle: TextStyle(color: Colors.black),
                // unselectedIconTheme: IconThemeData(color: Colors.grey),
                // unselectedLabelTextStyle: TextStyle(color: Colors.grey),
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
                          IconButton(
                              icon: Icon(Icons.settings), onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.logout),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              }),
                        ],
                      ),
                      //color: Colors.blue,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
          page, // Main body yang di kanan, flex 5
        ],
      ),
    );
  }
}
