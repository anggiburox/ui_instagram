import 'package:flutter/material.dart';
import 'package:ui_instagram/screens/home.dart';
import 'package:ui_instagram/screens/profile.dart';
import 'package:ui_instagram/screens/reels.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 10),
                      width: 300,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xffefefef),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 10),
                          child: Text('Search'),
                        ),
                      ],
                    ),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
                  itemCount: 89,
                  itemBuilder: (context, index) => Image.network(
                    "https://picsum.photos/id/${2 + index}/500/500",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
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
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.black,
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
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.search,
                      color: Colors.black,
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
                      Icons.video_collection_outlined,
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.video_collection_outlined,
                      color: Colors.black,
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
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
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
