import 'package:nike/Models/user.dart';

class Comment{
  User user;
  String commentContent;
  DateTime commentTime;
  Comment({required this.user, required this.commentContent, required this.commentTime});
}