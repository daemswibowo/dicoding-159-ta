import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_motivated/components/atoms/home/audio_info.dart';
import 'package:get_motivated/components/atoms/home/thumbnail.dart';

class MoleculeHomeList extends StatelessWidget {
  final String title;
  final String? category;
  final String duration;
  final String thumbnail;

  const MoleculeHomeList(
      {Key? key, required this.title, this.category, required this.duration, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                    child: AtomAudioInfo(
                        title: title,
                        category: category,
                        duration: duration)),
                Flexible(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                        child: AtomAudioThumbnailImage(
                          url: thumbnail,
                        )))
              ],
            ),
          ],
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        elevation: 4,
        shadowColor: Colors.black45,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }
}
