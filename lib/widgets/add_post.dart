import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key, this.title});

  final String? title;

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 12.0),
        color: Colors.white,
        child: Column(
          children: [
            _textArea(),
            const Divider(height: 20.0, thickness: 0.5),
            _mediaButtons(),
          ],
        ),
      ),
    );
  }

  Widget _textArea() {
    return const Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage('assets/image1.jpg'),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: 'What\'s on your mind?',
            ),
          ),
        )
      ],
    );
  }

  Widget _mediaButtons() {
    return SizedBox(
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _iconAndTextButtonWidget('Live', MdiIcons.videoImage, Colors.red),
          const VerticalDivider(width: 2.0),
          _iconAndTextButtonWidget(
              'Photo', Icons.photo_library, Colors.lightGreen),
          const VerticalDivider(width: 2.0),
          _iconAndTextButtonWidget(
              'Room', Icons.video_call, Colors.deepPurpleAccent)
        ],
      ),
    );
  }

  Widget _iconAndTextButtonWidget(String text, IconData icon, Color color) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        side: const BorderSide(color: Colors.transparent, width: 0.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 6.0),
          Text(text)
        ],
      ),
    );
  }
}
