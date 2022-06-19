import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_motivated/components/molecules/home/list_item.dart';
import 'package:get_motivated/screens/audio_player.dart';
import 'package:get_motivated/services/audio_service.dart';

class OrganismDataList extends StatefulWidget {
  const OrganismDataList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _OrganismDataListState();
}

class _OrganismDataListState extends State<OrganismDataList> {
  late List<Map<String, dynamic>> items = [
    {
      'title': 'Get relax with 1-Minute breathing',
      'category': 'Dragon Breath',
      'duration': '1 min',
      'image_url': 'https://picsum.photos/400/300',
      'audio_url':
      'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3',
    },
    {
      'title': 'Sunday Morning',
      'category': 'Beautiful Day',
      'duration': '1 min',
      'image_url': 'https://picsum.photos/400/300',
      'audio_url':
      'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3',
    },
    {
      'title': "Don't let me down",
      'category': "Today's Motivation",
      'duration': '1 min',
      'image_url': 'https://picsum.photos/400/300',
      'audio_url':
      'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3',
    },
    {
      'title': 'Get relax with 1-Minute breathing',
      'category': 'Dragon Breath',
      'duration': '1 min',
      'image_url': 'https://picsum.photos/400/300',
      'audio_url':
      'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3',
    },
    {
      'title': 'Sunday Morning',
      'category': 'Beautiful Day',
      'duration': '1 min',
      'image_url': 'https://picsum.photos/400/300',
      'audio_url':
      'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3',
    },
    {
      'title': "Don't let me down",
      'category': "Today's Motivation",
      'duration': '1 min',
      'image_url': 'https://picsum.photos/400/300',
      'audio_url':
      'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3',
    },
  ];

  @override
  void initState() {
    super.initState();
    AudioService().all().then((value) => {
      items.addAll(value)
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AudioPlayerScreen(
                      title: items[index]['title'],
                      picture: items[index]['image_url'],
                      category: items[index]['category'],
                      url: items[index]['image_url'])))
        },
        child: MoleculeHomeList(
          title: items[index]['title'],
          duration: items[index]['duration'],
          category: items[index]['category'],
          thumbnail: items[index]['image_url'],
        ),
      ),
      itemCount: items.length,
    );
  }
}
