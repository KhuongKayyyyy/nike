import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nike/Data/fake_data.dart';
import 'package:nike/Models/comment.dart';
class CommentItem extends StatelessWidget{
  Comment comment;
  CommentItem({super.key, required this.comment});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: FakeData.avatarIllustration,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Text(
            comment.user.name
          ),
        ],
      ),
    );
  }
}