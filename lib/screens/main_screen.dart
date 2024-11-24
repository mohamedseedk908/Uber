import 'package:flutter/material.dart';
import 'package:uber/screens/tabs/earning_tab_screen.dart';
import 'package:uber/screens/tabs/home_tab_screen.dart';
import 'package:uber/screens/tabs/rating_tab_screen.dart';
import 'package:uber/screens/tabs/seting_tab_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{
  TabController? tabController;
  int currentTabIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 4, vsync: this);
  }
  onTabChange(int index) {
    currentTabIndex=index;
    tabController!.index=index;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: TabBarView(controller :tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
         HomeTabScreen(),
         EarningTabScreen(),
         RatingTabScreen(),
         SettingsTabScreen(),
      ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.money),label: "money"),
            BottomNavigationBarItem(icon: Icon(Icons.start),label: "start"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings")
          ],
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.blue,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: onTabChange,
        currentIndex: currentTabIndex,
      ),
    );
  }
}
