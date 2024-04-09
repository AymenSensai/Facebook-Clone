import 'package:facebook_clone/screens/home_screen.dart';
import 'package:facebook_clone/widgets/app_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  final TrackingScrollController scrollController = TrackingScrollController();
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  PreferredSize(
                    preferredSize: const Size.fromHeight(50.0),
                    child: SliverAppBar(
                      pinned: false,
                      backgroundColor: Colors.white,
                      title: const Text(
                        'facebook',
                        style: TextStyle(
                          color: Color(0xFF1777F2),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.2,
                        ),
                      ),
                      centerTitle: false,
                      floating: true,
                      actions: [
                        AppBarButton(
                          icon: Icons.search,
                          iconSize: 25.0,
                          onPressed: () {},
                        ),
                        AppBarButton(
                          icon: MdiIcons.facebookMessenger,
                          iconSize: 25.0,
                          onPressed: () {},
                        ),
                      ],
                      systemOverlayStyle: SystemUiOverlayStyle.dark,
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        controller: controller,
                        labelColor: const Color(0xFF1777F2),
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: const Color(0xFF1777F2),
                        tabs: [
                          const Tab(icon: Icon(Icons.home, size: 25)),
                          const Tab(icon: Icon(Icons.ondemand_video, size: 25)),
                          Tab(icon: Icon(MdiIcons.bellOutline, size: 25)),
                          const Tab(icon: Icon(Icons.menu, size: 25)),
                        ],
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                controller: controller,
                children: const [
                  HomeScreen(),
                  Center(child: Text('reels')),
                  Center(child: Text('Notification')),
                  Center(child: Text('More'))
                ],
              )),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
