import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String photoPath;

  const AvatarWidget({
    required this.photoPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 1.5
          ),
          image: DecorationImage(
            image: AssetImage(photoPath),
            fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}