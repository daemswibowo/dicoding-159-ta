import 'package:flutter/material.dart';

class AtomAudioInfo extends StatelessWidget {
  final String title;
  final String? category;
  final String duration;

  const AtomAudioInfo(
      {Key? key, required this.title, this.category, required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color CATEGORY_FONT_COLOR = Colors.green;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0.0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
          RichText(
              text: TextSpan(children: [
            const WidgetSpan(
                child: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Icon(
                      Icons.volume_up_rounded,
                      size: 15,
                      color: Colors.black45,
                    ))),
            TextSpan(
                text: category,
                style: const TextStyle(fontSize: 12.0, color: CATEGORY_FONT_COLOR))
          ])),
          const Padding(padding: EdgeInsets.only(bottom: 4)),
          RichText(
              text: const TextSpan(children: [
            WidgetSpan(
                child: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Icon(
                      Icons.timer_outlined,
                      size: 15,
                      color: Colors.black45,
                    ))),
            TextSpan(
                text: '1 min',
                style: TextStyle(fontSize: 12.0, color: Colors.black))
          ])),
        ],
      ),
    );
  }
}
