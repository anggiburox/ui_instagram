import 'package:flutter/material.dart';
import 'package:ui_instagram/screens/profile.dart';
import 'package:ui_instagram/screens/reels.dart';
import 'package:ui_instagram/screens/search.dart';
import 'package:ui_instagram/widget/post.dart';
import 'package:ui_instagram/widget/story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Wrap(
          children: const [
            Text(
              "Instagram",
              style: TextStyle(
                fontSize: 23,
                fontFamily: 'Billabong',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
            color: Colors.black,
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/messenger.png',
                  width: 20,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, top: 5),
                width: 20,
                height: 20,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    color: const Color.fromARGB(255, 255, 17, 0),
                    child: const Text(
                      '13',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          StoryWidget(),
          const Divider(
            color: Colors.grey,
          ),
          Expanded(child: PostWidget()),
        ],
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
                      Icons.home_sharp,
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.home_sharp,
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
                  ? const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/foto.jpeg'))
                  : const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/foto.jpeg')),
            ),
          ],
        ),
      ),
    );
  }
}
