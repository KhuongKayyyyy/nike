import 'comment.dart';
class Advertisement {
  String name;
  String adContent;
  List<String> imgList;
  List<Comment> comments;
  Advertisement({required this.name,required this.adContent, required this.imgList, required this.comments});
}