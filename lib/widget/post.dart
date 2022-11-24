import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 400,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
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
                      width: 40,
                      height: 40,
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
                title: const Text('anggiburox'),
                trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/foto.jpeg'))),
            ),
            ListTile(
              leading: Wrap(
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-chat-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-send-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    '666 likes',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: const [
                      Text(
                        'anggiburox',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'jangan lupa ngoding',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 2),
                  child: Container(
                    child: const Text(
                      'View all 5 comments',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            //2
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
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
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/yung.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text('cahirul'),
                trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/yung.jpeg'))),
            ),
            ListTile(
              leading: Wrap(
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-chat-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-send-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    '600 likes',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: const [
                      Text(
                        'cahirul',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'jangan lupa udud',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 2),
                  child: Container(
                    child: const Text(
                      'View all 5 comments',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            //3
            Container(
              margin: EdgeInsets.only(top: 15),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
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
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/gas.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text('ghassani'),
                trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(Icons.more_vert),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/gas.jpeg'))),
            ),
            ListTile(
              leading: Wrap(
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-chat-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-send-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    '768 likes',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: const [
                      Text(
                        'ghassani',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.favorite, color: Colors.red),
                      Icon(Icons.favorite, color: Colors.red),
                      Icon(Icons.favorite, color: Colors.red),
                      Icon(Icons.favorite, color: Colors.red),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 2),
                  child: Container(
                    child: const Text(
                      'View all 5 comments',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            //4
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
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
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/guh.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text('teguh'),
                trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_vert),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/guh.jpeg'))),
            ),
            ListTile(
              leading: Wrap(
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-chat-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                  ImageIcon(
                    AssetImage('assets/images/icons8-send-64.png'),
                    color: Colors.black,
                    size: 32,
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    '589 likes',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: const [
                      Text(
                        'teguh',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.smoking_rooms),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 2),
                  child: Container(
                    child: const Text(
                      'View all 5 comments',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
