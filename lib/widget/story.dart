import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

class StoryWidget extends StatelessWidget {
  // List<dynamic> story = [
  //   {"images": 'assets/images/foto.jpeg', "username": "anggiburox"},
  //   {"images": 'assets/images/yung.jpeg', "username": "iyung"},
  //   {"images": 'assets/images/gas.jpeg', "username": "igas"},
  //   {"images": 'assets/images/guh.jpeg', "username": "teguh"},
  //   {"images": 'assets/images/den.jpeg', "username": "eden"},
  //   {"images": 'assets/images/mar.jpeg', "username": "imar"},
  // ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.only(top: 10),
        //   child: SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: List.generate(
        //         story.length,
        //         (index) {
        //           return Padding(
        //             padding: EdgeInsets.all(3),
        //             child: Column(
        //               children: [
        //                 Container(
        //                   width: 67,
        //                   height: 67,
        //                   padding: EdgeInsets.all(2),
        //                   decoration: BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     gradient: LinearGradient(
        //                       begin: Alignment.topCenter,
        //                       end: Alignment.centerLeft,
        //                       colors: [
        //                         Colors.red,
        //                         Colors.amber,
        //                       ],
        //                     ),
        //                   ),
        //                   child: Container(
        //                     width: 65,
        //                     height: 65,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       shape: BoxShape.circle,
        //                     ),
        //                     child: Padding(
        //                       padding: EdgeInsets.all(2),
        //                       child: Container(
        //                         width: 65,
        //                         height: 65,
        //                         decoration: new BoxDecoration(
        //                           shape: BoxShape.circle,
        //                           image: new DecorationImage(
        //                             fit: BoxFit.cover,
        //                             image:
        //                                 AssetImage('${story[index]["images"]}'),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.all(4.0),
        //                   child: Text('${story[index]["username"]}'),
        //                 ),
        //               ],
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //   ),
        // ),
        Stories(
          displayProgress: true,
          storyItemList: [
            // First group of stories
            StoryItem(
                name: "anggiburox",
                thumbnail: AssetImage('assets/images/foto.jpeg'),
                stories: [
                  // First story
                  Scaffold(
                    body: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/foto.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  Scaffold(
                    body: Center(
                      child: Text(
                        "Flutter Dart",
                        style: TextStyle(
                          color: Color(0xff777777),
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  // Second story in first group
                ]),
            // Second story group
            StoryItem(
              name: "cahirul",
              thumbnail: AssetImage('assets/images/yung.jpeg'),
              stories: [
                Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/yung.jpeg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            StoryItem(
              name: "teguh",
              thumbnail: AssetImage('assets/images/guh.jpeg'),
              stories: [
                Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/guh.jpeg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            StoryItem(
              name: "ghassani",
              thumbnail: AssetImage('assets/images/gas.jpeg'),
              stories: [
                Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/gas.jpeg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            StoryItem(
              name: "Daffa",
              thumbnail: AssetImage('assets/images/den.jpeg'),
              stories: [
                Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/den.jpeg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            StoryItem(
              name: "imar",
              thumbnail: AssetImage('assets/images/mar.jpeg'),
              stories: [
                Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/mar.jpeg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
