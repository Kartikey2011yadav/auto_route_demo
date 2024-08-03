import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.gr.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  SearchPage({super.key, required this.title});

  String title;

  @override
  State<SearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<SearchPage> {
  final int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.chat)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Article',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black54,
        onTap: ( index){
          if(index == 0){
            context.router.push(HomeRoute());
          }
          else if(index == 1){
            context.router.push(SearchRoute(title: "Search"));
          }
          else if(index == 2){
            context.router.push(ArticleRoute(title: "Articles"));
          }
          else if(index == 3){
            context.router.push(ProfileRoute(title: "Profile"));
          }
        },
      ),
    );
  }
}