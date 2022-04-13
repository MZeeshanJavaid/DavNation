import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatelessWidget {
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    List<StoryItem> stories = [
      StoryItem.text(
        title:
            "Hello there, this is going to awesome. done awesome photoshoot at studio.",
        backgroundColor: Colors.black,
      ),
      StoryItem.pageImage(
          url:
              "https://images.pexels.com/photos/2092474/pexels-photo-2092474.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          controller: StoryController()),
      StoryItem.pageImage(
          url:
              "https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          controller: StoryController()),
      StoryItem.pageImage(
          url:
              "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          controller: StoryController()),
    ];

    return Material(
      child: StoryView(
        storyItems: stories,
        controller: controller,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
