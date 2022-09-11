import 'package:flutter/material.dart';
import 'package:platzi_trips_app/headerAppbar.dart';
import 'package:platzi_trips_app/headerProfile.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTips extends StatefulWidget {
  const PlatziTips({Key? key}) : super(key: key);

  @override
  State<PlatziTips> createState() => _PlatziTipsState();
}
class _PlatziTipsState extends State<PlatziTips> {
  
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const HeaderProfile()
  ];
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });

    }
  @override
  Widget build(BuildContext context) {
    
    
    
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            )
          ],
        ),
      ),
    );
  }
}