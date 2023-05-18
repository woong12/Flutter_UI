import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  const SongCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            "Justin Bieber, Lauv, Ed Shereen, Drake, Post marlone, ...",
            style: Theme.of(context).textTheme.bodySmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
