import 'package:flutter/material.dart';
import 'package:one_widget_per_day/resources/strings.dart';
import 'package:one_widget_per_day/ui/widgets/button_catalog.dart';
import 'package:one_widget_per_day/ui/widgets/come_back_button.dart';
import 'package:one_widget_per_day/ui/widgets/custom_text.dart';
import 'package:one_widget_per_day/ui/widgets/title.dart';
import 'package:one_widget_per_day/utils/routes.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FutureBuilderScreen extends StatefulWidget {
  @override
  _FutureBuilderScreenState createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  String videoURL = Strings.LINK_FUTURE_BUILDER;
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      ComeBackButton(),
                      SizedBox(width: 30),
                      TitleFont(
                        fontSize: 50,
                        text: Strings.CATALOG_FUTURE_BUILDER01,
                      ),
                    ],
                  ),
                  TitleFont(
                    fontSize: 50,
                    text: Strings.CATALOG_FUTURE_BUILDER02,
                  ),
                  CustomText(text: Strings.FUTURE_BUILDER_TEXT01),
                  SizedBox(height: 30),
                  CustomText(text: Strings.FUTURE_BUILDER_TEXT02),
                  SizedBox(height: 30),
                  CustomText(text: Strings.FUTURE_BUILDER_TEXT03),
                  SizedBox(height: 30),
                  CustomText(text: Strings.FUTURE_BUILDER_TEXT04),
                  SizedBox(height: 30),
                  CustomText(text: Strings.FUTURE_BUILDER_TEXT05),
                  SizedBox(height: 30),
                  CustomText(text: Strings.FUTURE_BUILDER_TEXT06),
                  SizedBox(height: 30),
                  CustomText(text: Strings.VIDEO),
                  SizedBox(height: 30),
                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                  ),
                  SizedBox(height: 20),
                  ButtonCatalog(
                    text: Strings.VOLTAR,
                    onPressed: () {
                      Navigator.pushNamed(context, CatalogScreenRoute);
                    },
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}