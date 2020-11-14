
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_katchup/views/addPost.dart';
import 'package:social_katchup/views/messages.dart';
import 'package:social_katchup/views/newsfeed.dart';
import 'package:social_katchup/views/notification.dart';
import 'package:social_katchup/views/profile.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final List<Widget> _children = [
    NewsFeed(),
    Messages(),
    AddPost(),
    Notifications(),
    Profile()
  ];
  int cindex = 0;
//  final List<TitledNavigationBarItem> items = [
//     TitledNavigationBarItem(title: Text(''),),
//     TitledNavigationBarItem(title: Text('Search'), icon: Icons.search),
//     TitledNavigationBarItem(title: Text('Bag'), icon: Icons.card_travel),
//     TitledNavigationBarItem(title: Text('Orders'), icon: Icons.shopping_cart),
//     TitledNavigationBarItem(title: Text('Profile'), icon: Icons.person_outline),
//   ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:5,
          child: Scaffold(
          body:_children[cindex],
          
          bottomNavigationBar:Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5.0,
            ),
            child: Column(
              mainAxisSize:MainAxisSize.min,
              children: [
                Container(
                  child: BottomNavigationBar(
                    
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      
                      type: BottomNavigationBarType.fixed,
                      unselectedIconTheme: IconThemeData(color: Colors.grey),
                      showUnselectedLabels: true,
                      unselectedItemColor: Colors.grey,
                      selectedItemColor: Theme.of(context).primaryColor,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            // backgroundColor: Theme.of(context).primaryColor,
                            activeIcon: Container(
                              height: 60,
                              child: Column(
                                mainAxisSize:MainAxisSize.min,
                                mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  SizedBox(),
                                  Container(
                                    height: 3.0,
                                    width: 50.0,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  
                                  SizedBox(height: 13),
                                  SvgPicture.asset('assets/icons/home1.svg',
                                      height: 23.0),
                                ],
                              ),
                            ),
                            icon: SvgPicture.asset('assets/icons/home.svg',
                                height: 23.0),
                            title: Text('')),
                        BottomNavigationBarItem(
                            activeIcon: SvgPicture.asset('assets/icons/messages1.svg',
                                height: 23.0),
                            icon: SvgPicture.asset('assets/icons/messages.svg',
                                height: 23.0),
                            title: Text('')),
                        BottomNavigationBarItem(
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, bottom: 10),
                              child: Material(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                elevation: 7.0,
                                child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Theme.of(context).primaryColor,
                                    child: Icon(Icons.add,
                                        size: 40, color: Colors.white)),
                              ),
                            ),
                            icon: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, bottom: 10),
                              child: Material(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                elevation: 7.0,
                                child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Theme.of(context).primaryColor,
                                    child: Icon(Icons.add,
                                        size: 40, color: Colors.white)),
                              ),
                            ),
                            title: Text('')),
                        BottomNavigationBarItem(
                            activeIcon: SvgPicture.asset(
                                'assets/icons/notification1.svg',
                                height: 23.0),
                            icon: SvgPicture.asset('assets/icons/notification.svg',
                                height: 23.0),
                            title: Text('')),
                        BottomNavigationBarItem(
                            activeIcon: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/user.jpg')),
                            icon: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/user.jpg')),
                            title: Text('')),
                      ],
                      currentIndex: cindex,
                      onTap: (int i) {
                        setState(() {
                          cindex = i;
                        });
                      }),
                ),
              ],
            ))
              ),
    );
  }
}
