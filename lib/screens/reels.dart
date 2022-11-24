import 'package:flutter/material.dart';
import 'package:ui_instagram/screens/home.dart';
import 'package:ui_instagram/screens/profile.dart';
import 'package:ui_instagram/screens/search.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const SearchPage(),
    const ReelsPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Reels",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/foto.jpeg'))),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 40,
                      height: 40,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/foto.jpeg'),
                        ),
                      ),
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'flutterdev',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      leading: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.centerLeft,
                                colors: [
                                  Colors.red,
                                  Colors.amber,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/foto.jpeg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Text('anggiburox'),
                      trailing: IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
                pageIndex = 0;
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
                pageIndex = 1;
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReelsPage()),
                );
                pageIndex = 2;
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.video_collection,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.video_collection,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  // Get.toNamed(profileRoute);
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
                pageIndex = 4;
              },
              icon: pageIndex == 4
                  ? CircleAvatar(
                      backgroundImage: AssetImage('assets/images/foto.jpeg'))
                  : CircleAvatar(
                      backgroundImage: AssetImage('assets/images/foto.jpeg')),
            ),
          ],
        ),
      ),
    );
  }
}
