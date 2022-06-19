import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/models/product.dart';
import 'package:mobile_app_group_project/screens/views/home_view.dart';
import 'package:mobile_app_group_project/screens/views/menu_view.dart';
import 'package:mobile_app_group_project/screens/views/order_view.dart';
import 'package:mobile_app_group_project/screens/views/personal_view.dart';
import 'package:mobile_app_group_project/screens/views/qr_code_view.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// class BottomNavBar extends StatefulWidget {
//   BottomNavBar({Key? key}) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     PersistentTabController _controller;

//     _controller = PersistentTabController(initialIndex: 0);
//     return PersistentTabView(
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       confineInSafeArea: true,
//       decoration: NavBarDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         colorBehindNavBar: Colors.white,
//       ),
//       popAllScreensOnTapOfSelectedTab: true,
//       itemAnimationProperties: const ItemAnimationProperties(
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//     );
//   }
// }

// List<Widget> _buildScreens() {
//   return [
//     //HomeMain(),
//     Center(
//       child: Text("Home"),
//     ),
//     Center(
//       child: Text("Menu"),
//     ),
//     Center(
//       child: Text("QR"),
//     ),
//     Center(
//       child: Text("Order"),
//     ),
//     //OrderScreen(),
//     Center(
//       child: Text("Personal"),
//     ),
//   ];
// }

// List<PersistentBottomNavBarItem> _navBarsItems() {
//   return [
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.home),
//       title: ("Home"),
//       activeColorPrimary: Colors.blue,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.menu),
//       title: ("Menu"),
//       activeColorPrimary: Colors.blue,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.qr_code),
//       title: ("QR Code"),
//       activeColorPrimary: Colors.blue,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.feed_outlined),
//       title: ("Order"),
//       activeColorPrimary: Colors.blue,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.person),
//       title: ("Personal"),
//       activeColorPrimary: Colors.blue,
//       inactiveColorPrimary: Colors.grey,
//     ),
//   ];
// }
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle = TextStyle(
//     fontSize: 30,
//     fontWeight: FontWeight.bold,
//   );
//   static const List<Widget> _widgetOptions = <Widget>[
//     HomeView(),
//     MenuView(),
//     QRCodeView(),
//     OrderView(),
//     PersonalView(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         unselectedItemColor: Colors.black,
//         showUnselectedLabels: true,
//         selectedLabelStyle: TextStyle(
//           fontSize: 12,
//         ),
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.qr_code),
//             label: 'QR Code',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.description_outlined),
//             label: 'Order',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Personal',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: kPrimaryColor,
//         onTap: _onItemTapped,
//       ),

//     );
//   }
// }

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: kPrimaryColor,
        inactiveColor: Colors.black54,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR Code',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Personal',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: HomeView());
            });
            break;
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: MenuView());
            });
            break;
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: QRCodeView());
            });
            break;
          case 3:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: OrderView());
            });
            break;
          case 4:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: PersonalView());
            });
            break;
          default:
            return const CupertinoTabView();
        }
      },
      
    );
    
  }
}

// Product product = Product(
//   image: "https://picsum.photos/250?image=9",
//   title: "Product Name",
//   price: 999,
//   commission: 99,
// );