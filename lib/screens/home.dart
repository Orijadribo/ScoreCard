import 'package:flutter/material.dart';
import 'players.dart';
import 'course.dart';
import 'scorecards.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
   late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_tabChanged);
  }
  @override
  void dispose() {
    super.dispose();
    @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }
    _tabController.dispose();
  }
  void _tabChanged() {
    // Check if Tab Controller index is changing, otherwise we get the notice twice
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WestNile Score Card'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: TabBarView(
        controller: _tabController,
          children: const [
            ScoreCards(),
            Players(),
            Course(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black54,
            unselectedLabelColor: Colors.black38,
            tabs: const [
              Tab(
                // icon: Icon(Icons.cake),
                text: 'Score Cards',
              ),
              Tab(
                // icon: Icon(Icons.sentiment_satisfied),
                text: 'Players',
              ),
              Tab(
                // icon: Icon(Icons.access_alarm),
                text: 'Course',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
