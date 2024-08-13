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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CachedNetworkImage(
                    imageUrl: FakeData.avatarIllustration,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment.user.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    comment.commentContent,
                  ),
                  Text(
                    comment.timeAgo(),

                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}