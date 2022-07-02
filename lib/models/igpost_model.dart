part of 'models.dart';

class Igpost extends Equatable {
  final String imageIgURL;
  final String titleIg;
  final String desc;
  final String linkIg1;
  final String linkIg2;
  final String footer;

  Igpost(
      {this.imageIgURL,
      this.titleIg,
      this.desc,
      this.linkIg1,
      this.linkIg2,
      this.footer});

  factory Igpost.fromJson(Map<String, dynamic> json) => Igpost(
        imageIgURL: json['imageIgURL'],
        titleIg: json['titleIg'],
        desc: json['desc'],
        linkIg1: json['linkIg1'],
        linkIg2: json['linkIg2'],
        footer: json['footer'],
      );

  @override
  List<Object> get props => [
        imageIgURL,
        titleIg,
        desc,
        linkIg1,
        linkIg2,
      ];
}
