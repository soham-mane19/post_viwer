import 'package:flutter/material.dart';
import 'package:post_viewer/models/postmodel.dart';


class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Icon(Icons.image),
        title: Text(post.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(post.shortDescription),
            Text('Author: ${post.author}'),
            Text('Community: ${post.community}'),
            Text('Time: ${post.time}'), // Format the time appropriately
            // Row to show votes and comments count with icons
            Row(
              children: [
                Icon(Icons.thumb_up, size: 16, color: Colors.blue),
                SizedBox(width: 5),
                Text('Votes: ${post.votesCount}', style: TextStyle(fontSize: 14)),
                SizedBox(width: 15),
                Icon(Icons.comment, size: 16, color: Colors.green),
                SizedBox(width: 5),
                Text('Comments: ${post.commentsCount}', style: TextStyle(fontSize: 14)),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
