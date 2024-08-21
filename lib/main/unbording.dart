import 'package:flutter/cupertino.dart';

class UnbordingContent{
  String image;
  String title;
  String discription;

  UnbordingContent({
  required this.image,required this.title,
    required this.discription });
}

List<UnbordingContent> contents=[
  UnbordingContent(
      image:"assets/images/Rectangle 12.png",
      title: "Travel safely, comfortably, & easily",
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  ),
  UnbordingContent(
      image: "assets/images/page 1 2.png",
      title: "Find the best hotels for your vacation",
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  UnbordingContent(
      image: "assets/images/page 13.png",
      title: "Let’s discover the world with us",
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  ),
];

