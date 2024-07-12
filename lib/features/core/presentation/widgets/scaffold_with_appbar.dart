import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../services/navbar_provider.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final Widget child;

  ScaffoldWithNavBar({
    required this.child,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  Widget _buildNavBarItem(String assetPath, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 24,
        width: 24,
        child: Image(
          image: AssetImage(assetPath),
          color: isSelected ? null : null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: Consumer<NavBarProvider>(
        builder: (context, navBarState, _) {
          return SizedBox(
            height: navBarState.isHidden ? 0 : null,
            child: navBarState.isHidden
                ? const SizedBox.shrink()
                : Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white.withOpacity(0.6),
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: BottomNavigationBar(
                      elevation: 100,
                      selectedItemColor: const Color(0xff95f003),
                      backgroundColor: const Color(0xff181d28),
                      unselectedItemColor: Colors.white,
                      showUnselectedLabels: true,
                      type: BottomNavigationBarType.fixed,
                      selectedFontSize: 12,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 23,
                                    width: 20,
                                    child: Image(
                                      image:
                                          AssetImage("assets/images/home.png"),
                                      color: navBarState.currentIndex == 0
                                          ? Color(0xff95f003)
                                          : Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                          icon: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 23,
                                    width: 20,
                                    child: Image.asset(
                                      "assets/images/cast.png",
                                      color: navBarState.currentIndex == 1
                                          ? null
                                          : null,
                                    )),
                              ),
                            ],
                          ),
                          label: "Cast",
                        ),
                        BottomNavigationBarItem(
                          icon: _buildNavBarItem(
                            "assets/images/episodes.png",
                            navBarState.currentIndex == 2,
                          ),
                          label: "Episodes",
                        ),
                        BottomNavigationBarItem(
                          icon: _buildNavBarItem(
                            "assets/images/location.png",
                            navBarState.currentIndex == 3,
                          ),
                          label: "Locations",
                        ),
                      ],
                      currentIndex: navBarState.currentIndex,
                      onTap: (int index) {
                        navBarState.setCurrentIndex(index);
                        switch (index) {
                          case 0:
                            context.push("/homepage");
                            break;
                          case 1:
                            context.push("/castPage");
                            break;
                          case 2:
                            context.push("/episodesPage");
                            break;
                          case 3:
                            context.push("/locationsPage");
                            break;
                        }
                      },
                    ),
                  ),
          );
        },
      ),
    );
  }
}
