import 'package:flutter/material.dart';
import 'package:fusion_project/app_imports.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // List<Widget> sections = [
  //   SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: Row(children: [
  //       numberCard(),
  //       numberCard(),
  //       numberCard(),
  //     ]),
  //   ),
  //   const SizedBox(
  //     height: 20,
  //   ),
  //   SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: Row(children: [
  //       licenceCard(),
  //       licenceCard(),
  //       licenceCard(),
  //     ]),
  //   ),
  //   const SizedBox(
  //     height: 20,
  //   ),
  //   SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: Row(children: []),
  //   ),
  //   const SizedBox(
  //     height: 20,
  //   ),
  //   SingleChildScrollView(
  //       scrollDirection: Axis.horizontal, child: Row(children: [])),
  // ];
  final DashboardController _dashBoardController = DashboardController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Column(
                children: [
                  Text(
                    "Good Evening",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text("John Doe",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 0, 0),
                child: Stack(
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage('assets/images/user.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 14,
                          child: IconButton(
                            icon: Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 14,
                            ),
                            onPressed: null,
                          )),
                    ),
                  ],
                ),
              ),
              actions: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.notifications,
                  color: FAppTheme.defaultFusionColor,
                  size: 25,
                )
              ],
            )),
        body: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.3,
                child: ReorderableListView(
                    shrinkWrap: true,
                    children: [
                      for (final tile in _dashBoardController.sections)
                        ListTile(
                          key: ValueKey(tile),
                          title: tile,
                        ),
                    ],
                    onReorder: (dragIndex, dropIndex) {
                      setState(() {
                        if (!_dashBoardController.getEditStatus()) {
                          return;
                        }

                        if (dragIndex < dropIndex) {
                          dropIndex--;
                        }

                        final tile =
                            _dashBoardController.sections.removeAt(dragIndex);

                        _dashBoardController.sections.insert(dropIndex, tile);
                      });
                    }),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      _dashBoardController.toogleEditStatus();
                      if (_dashBoardController.getEditStatus()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Edit Mode"),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("View Mode"),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Customizing your dashboard",
                      style: TextStyle(color: FAppTheme.defaultFusionColor),
                    )),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.work_outline_outlined,
                    color: Colors.black,
                  ),
                  label: 'work'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_outline_rounded, color: Colors.black),
                  label: 'people'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, color: Colors.black),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.money_outlined, color: Colors.black),
                  label: 'money'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shape_line_outlined, color: Colors.black),
                  label: 'shapes'),
            ],
            currentIndex: _dashBoardController.getSelectedIndex(),
            selectedItemColor: FAppTheme.defaultFusionColor,
            onTap: (int newIndex) {
              setState(() {
                _dashBoardController.setSelectedIndex(newIndex);
              });
            }),
      ),
    );
  }
}
