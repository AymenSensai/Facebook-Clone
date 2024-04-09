import 'package:flutter/material.dart';

class CreateRoom extends StatefulWidget {
  const CreateRoom({super.key, this.title});

  final String? title;

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Container(
        height: 80.0,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: _createRoomButton(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  _avatarImage('assets/image2.jpg'),
                  _avatarImage('assets/image3.jpg'),
                  _avatarImage('assets/image4.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _gradientButtonRoom(Widget child) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const RadialGradient(
          center: Alignment.topLeft,
          radius: 1,
          colors: [Colors.blue, Colors.pinkAccent],
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: child,
    );
  }

  Widget _createRoomButton() {
    return SizedBox(
      height: 50,
      width: 125,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
          side: BorderSide(color: Colors.blue[100]!, width: 1.0),
        ),
        child: Row(
          children: [
            _gradientButtonRoom(
              const Icon(
                Icons.video_call,
                size: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 7.0),
            const Text('Create\nRoom'),
          ],
        ),
      ),
    );
  }

  Widget _avatarImage(String profileAvatarImage) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Stack(children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage(profileAvatarImage),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: const Color(0xFF50b525),
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
