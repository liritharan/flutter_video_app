import 'package:flutter_video_app/list_view.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        children: <Widget>[

          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://api.ijeeni.com/post/1613979489427.mp4',
            ),
            looping: true,
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://api.ijeeni.com/post/1613825806693.mp4',
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://api.ijeeni.com/post/1613825446865.mp4',
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://api.ijeeni.com/post/1613825451275.mp4',
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://api.ijeeni.com/post/1613825381759.mp4',
            ),
          ),
          // ChewieListItem(
          //   // This URL doesn't exist - will display an error
          //   videoPlayerController: VideoPlayerController.network(
          //     '',
          //   ),
          // ),
        ],
      ),
    );
  }
}
