import 'package:flutter/material.dart';
import 'package:tazzatv/Screens/TabController/AllNews.dart';
import 'package:tazzatv/Widgets/MyDrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
      key: _key,
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF05265E),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            //Scaffold.of(context).openDrawer();
            _key.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 20,),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 25,),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: DefaultTabController(
            length: 6,
            child: Column(
              children: const [
                TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "IPL2022",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "India",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Photo",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Video",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Entertainment",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    Center(
                      child: AllNews(),
                    ),
                    Center(
                      child: AllNews(),
                    ),
                    Center(
                      child: AllNews(),
                    ),
                    Center(
                      child: AllNews(),
                    ),
                    Center(
                      child: AllNews(),
                    ),
                    Center(
                      child: AllNews(),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
