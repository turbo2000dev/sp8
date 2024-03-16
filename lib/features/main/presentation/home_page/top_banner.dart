import 'package:flutter/material.dart';
import 'package:sp8/core/constants/image_files.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            child: Image(
              image: AssetImage(ImageFiles.superBetBackground),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
