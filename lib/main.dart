import 'package:flutter_video_app/list_view.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_video_app/model/video_model.dart';
import 'const.dart';
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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
List <VideoModel> videoModel;
  @override
  void initState(){
    super.initState();
    videoModel = Constants.getVideoName();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView.builder(
        itemCount: videoModel.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index){
          return ChewieListItem(
                videoPlayerController: VideoPlayerController.network(
                  'https://test.api.ijeeni.com/files/${videoModel[index].name}',

                ),

                looping: true,

              );

        }

      ),
    );
  }
}
