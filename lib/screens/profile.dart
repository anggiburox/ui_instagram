import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';
import 'package:ui_instagram/screens/home.dart';
import 'package:ui_instagram/screens/search.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const SearchPage(),
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
              "anggiburox",
              style: TextStyle(
                fontSize: 23,
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
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                children: [
                  // profile user
                  Container(
                    width: 95,
                    height: 95,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
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
                          width: 87,
                          height: 87,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/foto.jpeg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InfoProfile(
                          title: "Posts",
                          total: 89.toString(),
                        ),
                        const InfoProfile(
                          title: "Followers",
                          total: "666",
                        ),
                        InfoProfile(
                          title: "Followings",
                          total: 656.toString(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "BUROX",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 7),
            // info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                text: TextSpan(
                  text: "Jangan lupa ngoding\n",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  children: const [
                    TextSpan(
                      text: " #flutter",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            // button edit profile
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: 210,
                  child: Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffefefef),
                      ),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffefefef),
                      ),
                      child: const Icon(
                        Icons.person_add_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            // Row Icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.grid_on),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_pin_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
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
                setState(() {
                  // Get.toNamed(profileRoute);
                  pageIndex = 2;
                });
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

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key, required this.title, required this.total})
      : super(key: key);

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}
