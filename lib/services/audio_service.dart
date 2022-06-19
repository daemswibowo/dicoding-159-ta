class AudioService {
  /// Retrieve all audios
  ///
  /// AudioService().all();
  all() async {
    final List<Map<String, dynamic>> audios = [
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

    return Future.delayed(const Duration(seconds: 0), () {
      return audios;
    });
  }
}
