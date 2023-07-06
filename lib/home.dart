// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(InstaApp());

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram app',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: instagram(),
    );
  }
}

class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  bool hasStory = false;
  int followers = 1234;
  int following = 567;
  int posts = 15;

  List<String> imagepath = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
    'assets/10.jpg',
    'assets/11.jpg',
    'assets/12.jpg',
    'assets/13.jpg',
    'assets/14.jpg',
    'assets/15.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              height: 8,
            ),
            Icon(
              Icons.lock,
              color: Colors.black,
            ),
            Text(
              'Animal_love',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
            ),
            SizedBox(width: 5,),
            Icon(Icons.verified,color: Colors.blue,)
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_add, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/pro.jpg'),
                        radius: 55,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: hasStory ? Colors.green : Colors.grey,
                                  width: 3)),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Wild Animal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        posts.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Post',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        followers.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Follower',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        following.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
                width: 10,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      hasStory = true;
                    });
                  },
                  child: Text(
                    'Edit profile',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      hasStory = false;
                    });
                  },
                  child: Text(
                    'Share Profile',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              SizedBox(
                height: 35,
                width: 52,
                child: OutlinedButton(
                  onPressed: (){},
                  child: Icon(
                    Icons.person_pin_outlined,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
            ],
          ),
          Container(
            color: Colors.white,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.apps, size: 30),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.person_pin_outlined, size: 30),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.video_camera_back_outlined, size: 30),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemCount: imagepath.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  imagepath[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
