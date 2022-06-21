import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AudioPlayerScreen extends StatefulWidget {
  final String title;
  final String? category;
  final String? picture;
  final String url;

  const AudioPlayerScreen(
      {Key? key,
      required this.title,
      this.category,
      required this.url,
      this.picture})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayerScreen> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double imageSize = screenSize.width / 2 - (screenSize.width * 0.1);

    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 1,
              child: ListTile(
                title: Text(widget.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                subtitle: Text(widget.category!,
                    style: const TextStyle(fontSize: 20)),
              )),
          Expanded(
              flex: 1,
              child: Card(
                child: Image.network(widget.url,
                    width: imageSize, height: imageSize, fit: BoxFit.cover),
                elevation: 16,
                shadowColor: Colors.black,
              )),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Slider(
                    value: _currentSliderValue,
                    max: 100,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () => {},
                        child: SvgPicture.asset('assets/play.svg'),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                ],
              )),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
