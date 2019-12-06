import 'package:allthingscharmaine/model/QA.dart';
import 'package:allthingscharmaine/model/article.dart';
import 'package:allthingscharmaine/model/charmainetv.dart';
import 'package:allthingscharmaine/model/event.dart';
import 'package:allthingscharmaine/model/questions_asked.dart';
import 'package:allthingscharmaine/model/video.dart';
import 'package:flutter/material.dart';

class CustomColors {
  static const Color TITLE_COLOR = Color(0xff656B6E);
  static const Color TEXT_COLOR = Color(0xff8E8E93);
  static const Color TITLE_EVENT_COLOR = Color(0xff515C6F);
}

class Data {
  static List<Event> getEventData() {
    List<Event> data = [];
    data.add(Event(
      id: 1,
      image: "assets/artboard–3.png",
      date: "January 18, 2019",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    data.add(Event(
      id: 2,
      image: "assets/girlinkitchen.png",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      date: "January 18, 2019",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    data.add(Event(
      id: 2,
      image: "assets/finegirl.png",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      date: "January 18, 2019",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    return data;
  }

  static List<Article> getArticleData() {
    List<Article> data = [];
    data.add(Article(
      id: 1,
      image: "assets/buffet-chicken-delicious-5916.jpg",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      date: "January 18, 2019",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    data.add(Article(
      id: 2,
      image: "assets/beach-daylight-fun-1430675.jpg",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      date: "January 18, 2019",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    data.add(Article(
      id: 3,
      image: "assets/girlinkitchen.png",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      date: "January 18, 2019",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    return data;
  }

  static List<Video> getVideoData() {
    List<Video> data = [];
    data.add(Video(
        id: 1,
        image: "assets/finegirl.png",
        title: "Charmaine Neque porro quisquam est qui dolorem .",
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.',
        viewCount: '51K views',
        duration: '9:59',
        time: '3 hours ago'));
    data.add(Video(
        id: 2,
        image: "assets/chicago.jpg",
        title: "Charmaine Neque porro quisquam est qui dolorem .",
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.',
        viewCount: '200K views',
        duration: '05:50',
        time: '3 hours ago'));
    data.add(Video(
        id: 3,
        image: "assets/chicago-Illinois.jpg",
        title: "Charmaine Neque porro quisquam est qui dolorem .",
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.',
        viewCount: '78K views',
        duration: '10:50',
        time: '3 hours ago'));
    data.add(Video(
        id: 4,
        image: "assets/blur-breakfast-close-up-376464.jpg",
        title: 'Charmaine Neque porro quisquam est qui dolorem .',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.',
        viewCount: '1M views',
        duration: '03:50',
        time: '3 hours ago'));
    return data;
  }

  static List<Charmainetv> getTVData() {
    List<Charmainetv> data = [];
    data.add(Charmainetv(
        imagePath: 'assets/assortment-autumn-background-1400172.jpg',
        name: 'cooking with charmaine'));
    data.add(Charmainetv(
        imagePath: 'assets/assorted-beauty-blur-457702.jpg', name: 'beauty'));
    data.add(Charmainetv(
        imagePath: 'assets/chicago.jpg', name: 'black ink crew chicago'));
    data.add(Charmainetv(
        imagePath: 'assets/behind-the-scenes-camera.png', name: 'BTS'));
    data.add(Charmainetv(
        imagePath: 'assets/blur-bokeh-community-5156.jpg',
        name: 'specials events'));
    data.add(Charmainetv(imagePath: 'assets/headshot1.JPG', name: 'bey talk'));
    data.add(Charmainetv(
        imagePath: 'assets/dogs_french_bulldog_bench_black.jpg',
        name: 'seven & eleven'));
    return data;
  }

  static List<QA> getQAData() {
    List<QA> data = [];

    data.add(QA(imagePath: "assets/finegirl.png", name: "Q/A by CHarmaine"));
    data.add(QA(imagePath: "assets/girlinkitchen.png", name: "questions asked"));
    data.add(QA(
        imagePath: "assets/adult-afro-black-woman-texting.jpg",
        name: "ask a question"));
    data.add(
        QA(imagePath: "assets/woman-on-smartphone.jpg", name: "my questions"));

    return data;
  }

  static List<QuestionsAsked> getAskedQuestions(){
    List<QuestionsAsked> data = [];
    data.add(QuestionsAsked(imagePath: "assets/finegirl.png", question: "what's your favorite movie"));
    data.add(QuestionsAsked(imagePath: "assets/girlinkitchen.png", question: "what's your favorite food"));
    data.add(QuestionsAsked(imagePath: "assets/finegirl.png", question: "what's your favorite song"));
    return data;

  }

  static List<QuestionsAsked> getMyAskedQuestions(){
    List<QuestionsAsked> data = [];
    data.add(QuestionsAsked(imagePath: "assets/finegirl.png", question: "what's your favorite movie"));
    data.add(QuestionsAsked(imagePath: "assets/finegirl.png", question: "what's your favorite food"));
    data.add(QuestionsAsked(imagePath: "assets/finegirl.png", question: "what's your favorite song"));
    data.add(QuestionsAsked(imagePath: "assets/finegirl.png", question: "what's your favorite song"));
    return data;

  }
}
