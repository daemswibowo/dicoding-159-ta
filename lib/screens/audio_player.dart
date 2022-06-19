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
          ListTile(
            title: Text(widget.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 42,
                    fontWeight: FontWeight.bold)),
            subtitle:
                Text(widget.category!, style: const TextStyle(fontSize: 20)),
          ),
          Card(
            child: Image.network(widget.url,
                width: 210, height: 210, fit: BoxFit.cover),
            elevation: 16,
            shadowColor: Colors.black,
          ),
          Column(
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
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
