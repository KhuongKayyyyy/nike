import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nike/Components/comment_item.dart';
import 'package:nike/Components/primary_button.dart';
import 'package:nike/Models/advertisement.dart';
import 'package:nike/Models/comment.dart';
class AdvertisementPage extends StatelessWidget{
  Advertisement advertisement;
  AdvertisementPage({required this.advertisement});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            advertisement.name,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            SizedBox(
              height: 400,
              child: CachedNetworkImage(
                imageUrl: advertisement.imgList.first,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()), // Placeholder while loading
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)), // Error widget
              ),
            ),
            //content
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth / 1.5,
                        child: Text(
                          advertisement.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        advertisement.adContent,
                        style:const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 40),
                      // interaction zone
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon:const Icon(Icons.ios_share, size: 30,)),
                          const SizedBox(width: 20,),
                          IconButton(onPressed: (){}, icon:const Icon(Icons.mode_comment_outlined, size: 30,)),
                        ],
                      ),
                      const SizedBox(height: 40),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 400,
              child: CachedNetworkImage(
                imageUrl: advertisement.imgList.first,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()), // Placeholder while loading
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)), // Error widget
              ),
            ),

            //button action
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(buttonContent: "Explore", onPressed: (){}),
            ),
            const SizedBox(height: 30,),

            //comment

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Row(
                    children: [
                      Text(
                        "Comment (${advertisement.comments.length})",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                      const Spacer(),
                      TextButton(onPressed: (){}, child: Text("See all", style: TextStyle(color: Colors.black.withOpacity(0.5)),),)
                    ],
                  ),
                  //comment list
                  SizedBox(
                    height:300,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: advertisement.comments.take(3).length,
                      itemBuilder: (context, index){
                        Comment comment = advertisement.comments.elementAt(index);
                        return CommentItem(comment: comment,);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}