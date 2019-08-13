import 'package:flutter/material.dart';

class AvatarDisplay extends StatelessWidget {
  final double imageSize = 65;

  const AvatarDisplay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(imageSize / 2),
            child: Image.network(
              'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
              height: imageSize,
              width: imageSize,
            ),
          ),
          Container(
            height: 35,
            child: Center(
              child: Text(
                "@Mozao",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
