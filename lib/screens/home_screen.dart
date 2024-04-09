import 'package:facebook_clone/widgets/add_post.dart';
import 'package:facebook_clone/widgets/create_room.dart';
import 'package:facebook_clone/widgets/post.dart';
import 'package:facebook_clone/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.title});

  final String? title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const AddPost(),
              const CreateRoom(),
              _storiesSection(),
              _postsSection()
            ],
          ),
        ));
  }

  Widget _storiesSection() {
    return SizedBox(
      height: 280,
      child: Card(
        elevation: 0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            Stories(
                storyImage: "assets/story_image1.jpg",
                userImage: "assets/image2.jpg",
                userName: "Flutter Soldier",
                first: true),
            Stories(
                storyImage: "assets/story_image2.jpg",
                userImage: "assets/image3.jpg",
                userName: "Noah Thompson",
                first: false),
            Stories(
                storyImage: "assets/story_image3.jpg",
                userImage: "assets/image4.jpg",
                userName: "Alexander Rodriguez",
                first: false),
            Stories(
                storyImage: "assets/story_image4.jpg",
                userImage: "assets/image5.jpg",
                userName: "Ethan Brown",
                first: false),
            Stories(
                storyImage: "assets/story_image5.jpg",
                userImage: "assets/image6.jpg",
                userName: "Benjamin Wilson",
                first: false),
            Stories(
                storyImage: "assets/story_image6.jpg",
                userImage: "assets/image7.jpg",
                userName: "Daniel Martinez",
                first: false),
            Stories(
                storyImage: "assets/story_image7.jpg",
                userImage: "assets/image8.jpg",
                userName: "Mason Taylor",
                first: false),
          ],
        ),
      ),
    );
  }

  Widget _postsSection() {
    return const Column(
      children: [
        Post(
          userImage: 'assets/image2.jpg',
          username: 'Liam Johnson',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '5 min ago',
          imageUrl: null,
          likes: '100',
          comments: '20',
          shares: '30',
        ),
        Post(
          userImage: 'assets/image3.jpg',
          username: 'Noah Thompson',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '10 min ago',
          imageUrl: 'assets/post_image1.jpg',
          likes: '200',
          comments: '40',
          shares: '60',
        ),
        Post(
          userImage: 'assets/image4.jpg',
          username: 'Alexander Rodriguez',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '15 min ago',
          imageUrl: null,
          likes: '300',
          comments: '60',
          shares: '90',
        ),
        Post(
          userImage: 'assets/image5.jpg',
          username: 'Ethan Brown',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '30 min ago',
          imageUrl: 'assets/post_image2.jpg',
          likes: '3',
          comments: '2',
          shares: '1',
        ),
        Post(
          userImage: 'assets/image6.jpg',
          username: 'Benjamin Wilson',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '34 min ago',
          imageUrl: 'assets/post_image3.jpg',
          likes: '720',
          comments: '170',
          shares: '10',
        ),
        Post(
          userImage: 'assets/image7.jpg',
          username: 'Daniel Martinez',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '2 hours ago',
          imageUrl: null,
          likes: '210',
          comments: '45',
          shares: '2',
        ),
        Post(
          userImage: 'assets/image8.jpg',
          username: 'Mason Taylor',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '3 hours ago',
          imageUrl: 'assets/post_image4.jpg',
          likes: '140',
          comments: '26',
          shares: '9',
        ),
        Post(
          userImage: 'assets/image9.jpg',
          username: 'Olivia Garcia',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '7 hours ago',
          imageUrl: null,
          likes: '512',
          comments: '300',
          shares: '90',
        ),
        Post(
          userImage: 'assets/image10.jpg',
          username: 'Mason Taylor',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '2 days ago',
          imageUrl: 'assets/post_image5.jpg',
          likes: '42',
          comments: '15',
          shares: '1',
        ),
        Post(
          userImage: 'assets/image3.jpg',
          username: 'Noah Thompson',
          caption:
              'This is a facebook clone app developed only for learning purpose. Thank you.',
          timeAgo: '3 time ago',
          imageUrl: 'assets/post_image6.jpg',
          likes: '29',
          comments: '20',
          shares: '5',
        ),
      ],
    );
  }
}
