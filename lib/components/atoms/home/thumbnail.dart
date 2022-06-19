import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AtomAudioThumbnailImage extends StatelessWidget {
  final String url;

  const AtomAudioThumbnailImage({Key? key, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 160),
          child: ClipRRect(
            child: Image.network(url, fit: BoxFit.cover, height: 80),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        SvgPicture.asset('assets/play.svg')
      ],
      alignment: Alignment.center,
    );
  }
}
