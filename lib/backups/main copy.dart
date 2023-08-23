import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Stack(
              children: [
                NavigationRail(
                  selectedIndex: 0,
                  elevation: 2,
                  extended: true,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.dashboard),
                      label: Text('Dashboard'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.person),
                      label: Text('Members'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.star),
                      label: Text('Voters'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.map),
                      label: Text('Mapping'),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('images/avatar_logo2.png'),
                          maxRadius: 40,
                        ),
                        //hapus kalo sudah   color: Colors.red,
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
                        //hapus kalo sudah  color: Colors.green,
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
                                icon: Icon(Icons.logout), onPressed: () {}),
                          ],
                        ),
                        //hapus kalo sudah color: Colors.blue,
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        //color: Colors.red,
                        padding: EdgeInsets.all(20.0),
                        height: 200,
                        width: 300,
                        child: DChartBar(
                          animate: false,
                          data: [
                            {
                              'id': 'Bar',
                              'data': [
                                {'domain': '2020', 'measure': 3},
                                {'domain': '2021', 'measure': 4},
                                {'domain': '2022', 'measure': 6},
                                {'domain': '2023', 'measure': 0.3},
                              ],
                            },
                          ],
                          domainLabelPaddingToAxisLine: 16,
                          axisLineTick: 2,
                          axisLinePointTick: 2,
                          axisLinePointWidth: 10,
                          axisLineColor: Colors.red,
                          measureLabelPaddingToAxisLine: 16,
                          barColor: (barData, index, id) => Colors.red,
                          showBarValue: true,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        //color: Colors.green,
                        padding: EdgeInsets.all(20.0),
                        height: 200,
                        width: 300,
                        child: DChartPie(
                          animate: false,
                          data: [
                            {'domain': 'Flutter', 'measure': 28},
                            {'domain': 'React Native', 'measure': 27},
                            {'domain': 'Ionic', 'measure': 20},
                            {'domain': 'Cordova', 'measure': 15},
                          ],
                          fillColor: (pieData, index) => Colors.green,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        //color: Colors.blue,
                        padding: EdgeInsets.all(20.0),
                        height: 200,
                        width: 300,
                        child: DChartBar(
                          animate: false,
                          data: [
                            {
                              'id': 'Bar',
                              'data': [
                                {'domain': '2020', 'measure': 3},
                                {'domain': '2021', 'measure': 5},
                                {'domain': '2022', 'measure': 2},
                                {'domain': '2023', 'measure': 7},
                              ],
                            },
                          ],
                          domainLabelPaddingToAxisLine: 16,
                          axisLineTick: 2,
                          axisLinePointTick: 2,
                          axisLinePointWidth: 10,
                          axisLineColor: Colors.blue,
                          measureLabelPaddingToAxisLine: 16,
                          barColor: (barData, index, id) => Colors.blue,
                          showBarValue: true,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(30.00),
                      child: SizedBox.expand(
                        child: Image.asset(
                          'images/map_dummy2.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    height: 100,
                    margin: EdgeInsets.all(30.00),
                    child: Text('Scrollable List'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
