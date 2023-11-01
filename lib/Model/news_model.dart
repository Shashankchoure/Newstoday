// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  final String? category;
  final List<NewsData>? data;
  final bool? success;

  NewsModel({
    this.category,
    this.data,
    this.success,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        category: json["category"],
        data: json["data"] == null
            ? []
            : List<NewsData>.from(
                json["data"]!.map((x) => NewsData.fromJson(x))),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "success": success,
      };
}

class NewsData {
  final String? author;
  final String? content;
  final String? date;
  final String? id;
  final String? imageUrl;
  final String? readMoreUrl;
  final String? time;
  final String? title;
  final String? url;

  NewsData({
    this.author,
    this.content,
    this.date,
    this.id,
    this.imageUrl,
    this.readMoreUrl,
    this.time,
    this.title,
    this.url,
  });

  factory NewsData.fromJson(Map<String, dynamic> json) => NewsData(
        author: json["author"],
        content: json["content"],
        date: json['date'],
        id: json["id"],
        imageUrl: json["imageUrl"],
        readMoreUrl: json["readMoreUrl"],
        time: json["time"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "content": content,
        "date": date,
        "id": id,
        "imageUrl": imageUrl,
        "readMoreUrl": readMoreUrl,
        "time": time,
        "title": title,
        "url": url,
      };
}
