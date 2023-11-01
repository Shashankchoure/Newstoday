import 'package:flutter/material.dart';
import 'package:untitled9/Screens/news_screen.dart';
import 'package:untitled9/constants/endpoints.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var status = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 13,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: const TabBarView(
          children: [
            NewsScreen(categoryUrl: AppUrl.allNews),
            NewsScreen(categoryUrl: AppUrl.nationalNews),
            NewsScreen(categoryUrl: AppUrl.businessNews),
            NewsScreen(categoryUrl: AppUrl.sportsNews),
            NewsScreen(categoryUrl: AppUrl.worldNews),
            NewsScreen(categoryUrl: AppUrl.politicsNews),
            NewsScreen(categoryUrl: AppUrl.technologyNews),
            NewsScreen(categoryUrl: AppUrl.sportsNews),
            NewsScreen(categoryUrl: AppUrl.entertainmentNews),
            NewsScreen(categoryUrl: AppUrl.miscellaneousNews),
            NewsScreen(categoryUrl: AppUrl.hatkeNews),
            NewsScreen(categoryUrl: AppUrl.scienceNews),
            NewsScreen(categoryUrl: AppUrl.automobileNews),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text("Breaking News"),
      bottom: const TabBar(
        isScrollable: true,
        /*  unselectedLabelColor: Colors.red,*/
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            text: "All",
          ),
          Tab(
            text: "National",
          ),
          Tab(text: "Business"),
          Tab(text: "Sports"),
          Tab(text: "World"),
          Tab(text: "Politics"),
          Tab(text: "Technology"),
          Tab(text: "Stratup"),
          Tab(text: "Entertainment"),
          Tab(text: "Miscellaneous"),
          Tab(text: "Hatke"),
          Tab(text: "Science"),
          Tab(text: "Automobile"),
        ],
      ),
    );
  }
}
